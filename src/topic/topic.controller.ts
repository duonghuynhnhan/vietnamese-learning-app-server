import { Controller, Post, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiBody, ApiConsumes, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { FileService } from 'src/file/file.service';
import { TopicService } from './topic.service';
import { CreateTopicDto, TopicDto, UpdateTopicDto } from './dto';
import { plainToClass } from 'class-transformer';
import { ApiError } from 'src/api-responses';
import { Role } from 'src/auth/decorators';
import { AccountRole } from 'src/account/enum';

@Controller('topic')
@ApiTags('Topic')
@ApiExtraModels(TopicDto, CreateTopicDto, UpdateTopicDto)
@ApiBearerAuth()
@UseGuards(AuthGuard())
export class TopicController {
  constructor(
    private topicService: TopicService,
    private fileService: FileService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Tạo mới topic' })
  @Role(AccountRole.Admin)
  @ApiBody({
    schema: {
      title: 'Create new a topic',
      type: 'object',
      $ref: getSchemaPath(CreateTopicDto),
    }
  })
  @ApiOkResponse({
    schema: {
      title: 'Create new a topic',
      type: 'object',
      $ref: getSchemaPath(TopicDto),
    },
  })
  async createTopic(createTopicDto: CreateTopicDto): Promise<TopicDto> {
    try {
      const { avatar } = createTopicDto;

      const file = await this.fileService.getFileById(avatar);
      if (!file || !file.mimeType.startsWith('image/')) {
        throw new ApiError(400, 'Must input image file');
      }

      return plainToClass(TopicDto, await this.topicService.createTopic(createTopicDto));
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
