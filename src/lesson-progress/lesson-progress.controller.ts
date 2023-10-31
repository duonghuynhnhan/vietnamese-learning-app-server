import { Body, Controller, Post, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiBody, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AccountRole } from 'src/account/enum';
import { GetCurrentAccount, Role } from 'src/auth/decorators';
import { LessonService } from 'src/lesson/lesson.service';
import { AccountService } from 'src/account/account.service';
import { TopicService } from 'src/topic/topic.service';
import { LessonProgressService } from './lesson-progress.service';
import { CreateLessonProgressDto, LessonProgressDto } from './dto';
import { FileService } from 'src/file/file.service';
import { account } from '@prisma/client';
import { ApiError } from 'src/api-responses';
import { plainToClass } from 'class-transformer';
import { TopicProgressService } from 'src/topic-progress/topic-progress.service';

@Controller('lesson-progress')
@ApiTags('LessonProgress')
@ApiExtraModels(CreateLessonProgressDto, LessonProgressDto)
@ApiBearerAuth()
@UseGuards(AuthGuard())
@Role(AccountRole.User)
export class LessonProgressController {
  constructor(
    private lessonProgressService: LessonProgressService,
    private topicProgressService: TopicProgressService,
    private topicService: TopicService,
    private lessonService: LessonService,
    private accountService: AccountService,
    private fileService: FileService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Tạo mới lesson progress' })
  @ApiBody({
    schema: {
      title: 'Create new a lesson progress',
      type: 'object',
      $ref: getSchemaPath(CreateLessonProgressDto),
    }
  })
  @ApiOkResponse({
    schema: {
      title: 'Create new a lesson progress',
      type: 'object',
      $ref: getSchemaPath(LessonProgressDto),
    },
  })
  async createLessonProgress(@GetCurrentAccount() user: account, @Body() createLessonProgressDto: CreateLessonProgressDto): Promise<LessonProgressDto> {
    try {
      const { lessonId } = createLessonProgressDto;
      const lesson = await this.lessonService.getLessonById(lessonId);
      const account = await this.accountService.getAccountById(user.id);

      if (!lesson) {
        throw new ApiError(404, 'Lesson not found');
      }

      const topicProgress = await this.topicProgressService.getTopicProgressById(lesson.topicId, account.id);
      if (!topicProgress) {
        await this.topicProgressService.createTopicProgress({ topicId: lesson.topicId, accountId: account.id });

        const lessonProgressCreate = await this.lessonProgressService.createLessonProgress({ ...createLessonProgressDto, accountId: account.id, topicId: lesson.topicId });

        return plainToClass(LessonProgressDto, lessonProgressCreate);
      }

      const lessonProgressFind = await this.lessonProgressService.getLessonProgressById(account.id, lesson.topicId, lesson.id);
      if (lessonProgressFind) {
        const lessonProgess = await this.lessonProgressService.updateLessonProgressStatus(account.id, lesson.topicId, lesson.id, createLessonProgressDto.status);

        return plainToClass(LessonProgressDto, lessonProgess);
      }

      const lessonProgressCreate = await this.lessonProgressService.createLessonProgress({ ...createLessonProgressDto, accountId: account.id, topicId: lesson.topicId });

      return plainToClass(LessonProgressDto, lessonProgressCreate);
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
