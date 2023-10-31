import { Body, Controller, Post, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiBody, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { account } from '@prisma/client';
import { AccountRole } from 'src/account/enum';
import { GetCurrentAccount, Role } from 'src/auth/decorators';
import { TopicService } from 'src/topic/topic.service';
import { TopicProgressService } from './topic-progress.service';
import { AccountService } from 'src/account/account.service';
import { plainToClass } from 'class-transformer';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { CreateTopicProgressDto, TopicProgressDto } from './dto';

@Controller('topic-progress')
@ApiTags('TopicProgress')
@ApiExtraModels(CreateTopicProgressDto, TopicProgressDto)
@ApiBearerAuth()
@UseGuards(AuthGuard())
@Role(AccountRole.User)
export class TopicProgressController {
  constructor(
    private topicService: TopicService,
    private topicProgressService: TopicProgressService,
    private accountService: AccountService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Tạo mới topic progress' })
  @ApiBody({
    schema: {
      title: 'Create new a topic progress',
      type: 'object',
      $ref: getSchemaPath(CreateTopicProgressDto),
    }
  })
  @ApiOkResponse({
    schema: {
      title: 'Create new a topic',
      type: 'object',
      $ref: getSchemaPath(TopicProgressDto),
    },
  })
  async createTopicProgress(@GetCurrentAccount() user: account, @Body() createTopicProgressDto: CreateTopicProgressDto): Promise<TopicProgressDto | ApiSuccess> {
    try {
      const { topicId } = createTopicProgressDto;
      const topic = await this.topicService.getTopicById(topicId);
      const account = await this.accountService.getAccountById(user.id);

      if (!topic) {
        throw new ApiError(404, 'Topic not found');
      }

      const topicProgressFind = await this.topicProgressService.getTopicProgressById(topicId, account.id);
      if (topicProgressFind) {
        return { statusCode: 201, message: 'Create Topic Progress Successfully' };
      }

      const topicProgressCreate = await this.topicProgressService.createTopicProgress({ ...createTopicProgressDto, accountId: account.id });

      return plainToClass(TopicProgressDto, topicProgressCreate);
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
