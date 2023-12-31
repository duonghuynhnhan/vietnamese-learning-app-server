import { Controller, Get, Param, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { FileService } from 'src/file/file.service';
import { plainToClass } from 'class-transformer';
import { ApiError } from 'src/api-responses';
import { GetCurrentAccount, Role } from 'src/auth/decorators';
import { AccountRole } from 'src/account/enum';
import { FileDto } from 'src/file/dto';
import { account } from '@prisma/client';
import { TopicProgressService } from 'src/topic-progress/topic-progress.service';
import { TopicService } from './topic.service';
import { AccountService } from 'src/account/account.service';
import { TopicProgressStatus } from 'src/topic-progress/enum';
import { LessonService } from 'src/lesson/lesson.service';
import { LessonProgressService } from 'src/lesson-progress/lesson-progress.service';
import { TopicProgressDto } from 'src/topic-progress/dto';
import { CreateTopicDto, TopicDto, UpdateTopicDto } from './dto';

@Controller('topic')
@ApiTags('Topic')
@ApiExtraModels(TopicDto, CreateTopicDto, UpdateTopicDto, TopicProgressDto)
@ApiBearerAuth()
@UseGuards(AuthGuard())
@Role(AccountRole.User)
export class TopicController {
  constructor(
    private topicService: TopicService,
    private topicProgressService: TopicProgressService,
    private lessonService: LessonService,
    private lessonProgressService: LessonProgressService,
    private fileService: FileService,
    private accountService: AccountService,
  ) { }

  @Get()
  @ApiOperation({ summary: 'Lấy danh sách topic' })
  @ApiOkResponse({
    schema: {
      title: 'Get All Topics',
      type: 'array',
      items: { $ref: getSchemaPath(TopicProgressDto) },
    },
  })
  async getAllTopics(@GetCurrentAccount() user: account): Promise<TopicProgressDto[]> {
    try {
      const data: TopicProgressDto[] = [];
      const account = await this.accountService.getAccountByUsername(user.username);

      const topics = await this.topicService.getAllTopics();
      const topicProgresses = await this.topicProgressService.getAllTopicProgressesByAccountId(account.id);

      const topicIdsInProgress = topicProgresses.map(progress => progress.topicId);
      const topicsNotInProgress = topics.filter(topic => !topicIdsInProgress.includes(topic.id));
      const topicIdsProgressing = topicProgresses.map(progress => progress.topicId);
      const topicsProgressing = topics.filter(topic => topicIdsProgressing.includes(topic.id));

      for (const topicProgessing of topicsProgressing) {
        const topicProgress = await this.topicProgressService.getTopicProgressById(topicProgessing.id, account.id);
        const numberOfLessons = await this.lessonService.getCountOfLessonsByTopicId(topicProgessing.id);
        const numberOfLessonsProgressing = await this.lessonProgressService.getCountOfLessonByTopicId(account.id, topicProgessing.id);
        const avatar = await this.fileService.getFileById(topicProgessing.avatar);
        const progress = numberOfLessons !== 0 ? numberOfLessonsProgressing / numberOfLessons : 0;

        data.push(plainToClass(TopicProgressDto, { topic: plainToClass(TopicDto, { ...topicProgessing, avatar: plainToClass(FileDto, avatar) }), status: topicProgress.status, progress, lastModifiedAt: topicProgress.lastModifiedAt }));

        await this.topicProgressService.updateTopicProgressById(topicProgessing.id, account.id, progress);
      }

      for (const topicNotInProgress of topicsNotInProgress) {
        const avatar = await this.fileService.getFileById(topicNotInProgress.avatar);
        data.push(plainToClass(TopicProgressDto, { topic: plainToClass(TopicDto, { ...topicNotInProgress, avatar: plainToClass(FileDto, avatar) }), status: TopicProgressStatus.Unknown, progress: -1, lastModifiedAt: null }));
      }

      return data;
    } catch (error) {
      console.log(error);

      if (error instanceof ApiError) {
        throw error;
      }

      throw new ApiError(500);
    }
  }

  @Get('/:id')
  @ApiOperation({ summary: 'Lấy thông tin topic' })
  @ApiOkResponse({
    schema: {
      title: 'Get Topic Detail',
      type: 'object',
      $ref: getSchemaPath(TopicDto),
    },
  })
  async getTopicById(@Param('id') id: string): Promise<TopicDto> {
    try {
      const topic = await this.topicService.getTopicById(id);

      if (!topic) {
        throw new ApiError(404, 'Topic not found');
      }

      const avatar = plainToClass(FileDto, await this.fileService.getFileById(topic.avatar));

      return plainToClass(TopicDto, { ...topic, avatar });
    }
    catch (error) {
      console.log(error);

      if (error instanceof ApiError) {
        throw error;
      }

      throw new ApiError(500);
    }
  }
}
