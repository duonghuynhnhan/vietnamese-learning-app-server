import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiBody, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { plainToClass } from 'class-transformer';
import { AccountRole } from 'src/account/enum';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { Role } from 'src/auth/decorators';
import { FileDto } from 'src/file/dto';
import { FileService } from 'src/file/file.service';
import { CreateLessonDto, LessonDto, UpdateLessonDto } from 'src/lesson/dto';
import { LessonType } from 'src/lesson/enum';
import { LessonService } from 'src/lesson/lesson.service';
import { CreateTopicDto, TopicDto, UpdateTopicDto } from 'src/topic/dto';
import { TopicService } from 'src/topic/topic.service';

@Controller('admin')
@ApiTags('Admin')
@ApiExtraModels(TopicDto, CreateTopicDto, UpdateTopicDto, LessonDto, CreateLessonDto, UpdateLessonDto)
@UseGuards(AuthGuard())
@ApiBearerAuth()
@Role(AccountRole.Admin)
export class AdminController {
  constructor(
    private topicService: TopicService,
    private lessonService: LessonService,
    private fileService: FileService,
  ) { }

  @Post('topic/create')
  @ApiOperation({ summary: 'Tạo mới topic' })
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

  @Get('topic/list')
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

  @Get('topic/:id')
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

  @Put('topic/:id')
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

  @Delete('topic/:id')
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

  @Post('lesson')
  @ApiOperation({ summary: 'Tạo mới lesson' })
  @ApiBody({
    schema: {
      title: 'Create new a lesson',
      type: 'object',
      $ref: getSchemaPath(CreateLessonDto),
    }
  })
  @ApiOkResponse({
    schema: {
      title: 'Create new a lesson',
      type: 'object',
      $ref: getSchemaPath(LessonDto),
    },
  })
  async createLesson(@Body() createLessonDto: CreateLessonDto): Promise<LessonDto> {
    try {
      const { attachmentQuestion, attachment0, attachment1, attachment2, attachment3, topicId, type, rightAnswer, wrongAnswer1, wrongAnswer2, wrongAnswer3 } = createLessonDto;

      const topic = await this.topicService.getTopicById(topicId);
      if (!topic) {
        throw new ApiError(400, 'Invalid topic');
      }

      const attachmentQuestionFile = await this.fileService.getFileById(attachmentQuestion);
      const attachment0File = await this.fileService.getFileById(attachment0);
      const attachment1File = await this.fileService.getFileById(attachment1);
      const attachment2File = await this.fileService.getFileById(attachment2);
      const attachment3File = await this.fileService.getFileById(attachment3);

      if (type === LessonType.Listening || type === LessonType.Image) {
        if (type === LessonType.Listening) {
          if (!attachmentQuestionFile) {
            throw new ApiError(400, 'Upload attachments');
          }

          if (!attachmentQuestionFile.mimeType.startsWith('audio/')) {
            throw new ApiError(400, 'Upload audio attachments');
          }

          if (!rightAnswer || !wrongAnswer1 || !wrongAnswer2 || !wrongAnswer3) {
            throw new ApiError(400, 'Input answer');
          }

          return plainToClass(LessonDto, await this.lessonService.createLesson({ ...createLessonDto, attachment0: null, attachment1: null, attachment2: null, attachment3: null }));
        }

        else {
          if (!attachment0File || !attachment1File || !attachment2File || !attachment3File) {
            throw new ApiError(400, 'Upload attachments');
          }

          if (!attachment0File.mimeType.startsWith('image/') || !attachment1File.mimeType.startsWith('image/') || !attachment2File.mimeType.startsWith('image/') || !attachment3File.mimeType.startsWith('image/')) {
            throw new ApiError(400, 'Upload image attachments');
          }

          return plainToClass(LessonDto, await this.lessonService.createLesson({ ...createLessonDto, attachmentQuestion: null }));
        }
      }

      if (type === LessonType.Speaking) {
        // if (!attachmentQuestionFile) {
        //   throw new ApiError(400, 'Upload attachments');
        // }

        // if (!attachmentQuestionFile.mimeType.startsWith('audio/')) {
        //   throw new ApiError(400, 'Upload audio attachments');
        // }

        return plainToClass(LessonDto, await this.lessonService.createLesson({ ...createLessonDto, rightAnswer: null, wrongAnswer1: null, wrongAnswer2: null, wrongAnswer3: null, attachment0: null, attachment1: null, attachment2: null, attachment3: null }));
      }

      if (!rightAnswer || !wrongAnswer1 || !wrongAnswer2 || !wrongAnswer3) {
        throw new ApiError(400, 'Input answer');
      }

      return plainToClass(LessonDto, await this.lessonService.createLesson({ ...createLessonDto, attachmentQuestion: null, attachment0: null, attachment1: null, attachment2: null, attachment3: null }));
    }
    catch (error) {
      console.log(error);

      if (error instanceof ApiError) {
        throw error;
      }

      throw new ApiError(500);
    }
  }

  @Get('lesson/topic/:id')
  @ApiOperation({ summary: 'Lấy danh sách lesson của topic' })
  @ApiOkResponse({
    schema: {
      title: 'Get All Lessons By Topic Id',
      type: 'array',
      items: {
        $ref: getSchemaPath(LessonDto),
      },
    },
  })
  async getAllLessonsByTopicId(@Param('id') id: string): Promise<LessonDto[]> {
    try {
      const topic = await this.topicService.getTopicById(id);
      if (!topic) {
        throw new ApiError(404, 'Topic not found');
      }

      const data: LessonDto[] = [];

      const lessons = await this.lessonService.getAllLessonsByTopicId(id);
      for (const lesson of lessons) {
        const attachmentQuestion = await this.fileService.getFileById(lesson.attachmentQuestion ? lesson.attachmentQuestion : '');
        const attachment0 = await this.fileService.getFileById(lesson.attachment0 ? lesson.attachment0 : '');
        const attachment1 = await this.fileService.getFileById(lesson.attachment1 ? lesson.attachment1 : '');
        const attachment2 = await this.fileService.getFileById(lesson.attachment2 ? lesson.attachment2 : '');
        const attachment3 = await this.fileService.getFileById(lesson.attachment3 ? lesson.attachment3 : '');

        data.push(plainToClass(LessonDto, {
          ...lesson,
          attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
          attachment0: attachment0 ? plainToClass(FileDto, attachment0) : null,
          attachment1: attachment1 ? plainToClass(FileDto, attachment1) : null,
          attachment2: attachment2 ? plainToClass(FileDto, attachment2) : null,
          attachment3: attachment3 ? plainToClass(FileDto, attachment3) : null,
        }));
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

  @Get('lesson/:id')
  @ApiOperation({ summary: 'Lấy thông tin lesson' })
  @ApiOkResponse({
    schema: {
      title: 'Get Lesson Detail',
      type: 'object',
      $ref: getSchemaPath(LessonDto),
    },
  })
  async getLessonById(@Param('id') id: string): Promise<LessonDto> {
    try {
      const lesson = await this.lessonService.getLessonById(id);

      if (!lesson) {
        throw new ApiError(404, 'Lesson not found');
      }

      const attachmentQuestion = await this.fileService.getFileById(lesson.attachmentQuestion ? lesson.attachmentQuestion : '');
      const attachment0 = await this.fileService.getFileById(lesson.attachment0 ? lesson.attachment0 : '');
      const attachment1 = await this.fileService.getFileById(lesson.attachment1 ? lesson.attachment1 : '');
      const attachment2 = await this.fileService.getFileById(lesson.attachment2 ? lesson.attachment2 : '');
      const attachment3 = await this.fileService.getFileById(lesson.attachment3 ? lesson.attachment3 : '');

      return plainToClass(LessonDto, {
        ...lesson,
        attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
        attachment0: attachment0 ? plainToClass(FileDto, attachment0) : null,
        attachment1: attachment1 ? plainToClass(FileDto, attachment1) : null,
        attachment2: attachment2 ? plainToClass(FileDto, attachment2) : null,
        attachment3: attachment3 ? plainToClass(FileDto, attachment3) : null,
      });
    }
    catch (error) {
      console.log(error);

      if (error instanceof ApiError) {
        throw error;
      }

      throw new ApiError(500);
    }
  }

  @Put('lesson/:id')
  @ApiOperation({ summary: 'Cập nhật thông tin lesson' })
  @ApiOkResponse({
    schema: {
      title: 'Update Lesson',
      type: 'object',
      $ref: getSchemaPath(LessonDto),
    },
  })
  @ApiBody({
    schema: {
      title: 'Update Lesson',
      type: 'object',
      $ref: getSchemaPath(UpdateLessonDto),
    }
  })
  async updateLessonById(@Param('id') id: string, @Body() updateLessonDto: UpdateLessonDto): Promise<LessonDto> {
    try {
      const lesson = await this.lessonService.getLessonById(id);

      if (!lesson) {
        throw new ApiError(404, 'Lesson not found');
      }

      const file = await this.fileService.getFileById(updateLessonDto.attachmentQuestion);

      if (!file) {
        throw new ApiError(400, 'Must input attachment');
      }

      await this.lessonService.updateLessonById(id, updateLessonDto);

      const updatedLesson = await this.lessonService.getLessonById(id);
      const attachmentQuestion = await this.fileService.getFileById(updatedLesson.attachmentQuestion ? updatedLesson.attachmentQuestion : '');
      const attachment0 = await this.fileService.getFileById(updatedLesson.attachment0 ? updatedLesson.attachment0 : '');
      const attachment1 = await this.fileService.getFileById(updatedLesson.attachment1 ? updatedLesson.attachment1 : '');
      const attachment2 = await this.fileService.getFileById(updatedLesson.attachment2 ? updatedLesson.attachment2 : '');
      const attachment3 = await this.fileService.getFileById(updatedLesson.attachment3 ? updatedLesson.attachment3 : '');

      return plainToClass(LessonDto, {
        ...lesson,
        attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
        attachment0: attachment0 ? plainToClass(FileDto, attachment0) : null,
        attachment1: attachment1 ? plainToClass(FileDto, attachment1) : null,
        attachment2: attachment2 ? plainToClass(FileDto, attachment2) : null,
        attachment3: attachment3 ? plainToClass(FileDto, attachment3) : null,
      });
    }
    catch (error) {
      console.log(error);

      if (error instanceof ApiError) {
        throw error;
      }

      throw new ApiError(500);
    }
  }

  @Delete('lesson/:id')
  @ApiOperation({ summary: 'Xóa lesson' })
  @ApiOkResponse({
    schema: {
      title: 'Delete Lesson',
      type: 'object',
      $ref: getSchemaPath(ApiSuccess),
    },
  })
  async deleteLessonById(@Param('id') id: string): Promise<ApiSuccess> {
    try {
      const lesson = await this.lessonService.getLessonById(id);

      if (!lesson) {
        throw new ApiError(404, 'Lesson not found');
      }

      return this.lessonService.deleteLessonById(id);
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
