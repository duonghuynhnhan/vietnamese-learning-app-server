import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiBody, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { FileService } from 'src/file/file.service';
import { plainToClass } from 'class-transformer';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { Role } from 'src/auth/decorators';
import { AccountRole } from 'src/account/enum';
import { FileDto } from 'src/file/dto';
import { TopicService } from './topic.service';
import { CreateTopicDto, TopicDto, UpdateTopicDto } from './dto';

@Controller('topic')
@ApiTags('Topic')
@ApiExtraModels(TopicDto, CreateTopicDto, UpdateTopicDto)
// @ApiBearerAuth()
// @UseGuards(AuthGuard())
export class TopicController {
  constructor(
    private topicService: TopicService,
    private fileService: FileService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Tạo mới topic' })
  // @Role(AccountRole.Admin)
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
  async createTopic(@Body() createTopicDto: CreateTopicDto): Promise<TopicDto> {
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

  @Get()
  @ApiOperation({ summary: 'Lấy danh sách topic' })
  @ApiOkResponse({
    schema: {
      title: 'Get All Topics',
      type: 'array',
      items: {
        $ref: getSchemaPath(TopicDto),
      },
    },
  })
  async getAllTopics(): Promise<TopicDto[]> {
    try {
      const data: TopicDto[] = [];

      const topics = await this.topicService.getAllTopics();
      for (const topic of topics) {
        const avatar = await this.fileService.getFileById(topic.avatar);

        data.push(plainToClass(TopicDto, { ...topic, avatar: plainToClass(FileDto, avatar) }));
      }

      return data;
    }
    catch (error) {
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

  @Put('/:id')
  @ApiOperation({ summary: 'Cập nhật thông tin topic' })
  @ApiOkResponse({
    schema: {
      title: 'Update Topic',
      type: 'object',
      $ref: getSchemaPath(TopicDto),
    },
  })
  @ApiBody({
    schema: {
      title: 'Update Topic',
      type: 'object',
      $ref: getSchemaPath(UpdateTopicDto),
    }
  })
  async updateTopicById(@Param('id') id: string, @Body() updateTopicDto: UpdateTopicDto): Promise<TopicDto> {
    try {
      const topic = await this.topicService.getTopicById(id);

      if (!topic) {
        throw new ApiError(404, 'Topic not found');
      }

      const avatar = await this.fileService.getFileById(updateTopicDto.avatar);
      if (!avatar || !avatar.mimeType.startsWith('image/')) {
        throw new ApiError(400, 'Input image file');
      }

      await this.topicService.updateTopicById(id, updateTopicDto);

      const updatedTopic = await this.topicService.getTopicById(id);
      const updatedAvatar = plainToClass(FileDto, await this.fileService.getFileById(updatedTopic.avatar));

      return plainToClass(TopicDto, { ...updatedTopic, avatar: updatedAvatar });
    }
    catch (error) {
      console.log(error);

      if (error instanceof ApiError) {
        throw error;
      }

      throw new ApiError(500);
    }
  }

  @Delete('/:id')
  @ApiOperation({ summary: 'Xóa topic' })
  @ApiOkResponse({
    schema: {
      title: 'Delete Topic',
      type: 'object',
      $ref: getSchemaPath(ApiSuccess),
    },
  })
  async deleteTopicById(@Param('id') id: string): Promise<ApiSuccess> {
    try {
      const topic = await this.topicService.getTopicById(id);

      if (!topic) {
        throw new ApiError(404, 'Topic not found');
      }

      return this.topicService.deleteTopicById(id);
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
