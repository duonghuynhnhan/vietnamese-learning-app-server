import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiBody, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { FileService } from 'src/file/file.service';
import { plainToClass } from 'class-transformer';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { Role } from 'src/auth/decorators';
import { AccountRole } from 'src/account/enum';
import { FileDto } from 'src/file/dto';
import { TopicService } from 'src/topic/topic.service';
import { LessonService } from './lesson.service';
import { CreateLessonDto, LessonDto, UpdateLessonDto } from './dto';

@Controller('lesson')
@ApiTags('Lesson')
@ApiExtraModels(LessonDto, CreateLessonDto, UpdateLessonDto)
// @ApiBearerAuth()
// @UseGuards(AuthGuard())
export class LessonController {
  constructor(
    private lessonService: LessonService,
    private topicService: TopicService,
    private fileService: FileService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Tạo mới lesson' })
  // @Role(AccountRole.Admin)
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
      const { attachmentQuestion, attachment0, attachment1, attachment2, attachment3, topicId } = createLessonDto;

      const topic = await this.topicService.getTopicById(topicId);
      if (!topic) {
        throw new ApiError(400, 'Invalid topic');
      }

      const file = await this.fileService.getFileById(attachmentQuestion);
      const file0 = await this.fileService.getFileById(attachment0);
      const file1 = await this.fileService.getFileById(attachment1);
      const file2 = await this.fileService.getFileById(attachment2);
      const file3 = await this.fileService.getFileById(attachment3);

      if (!file || !file0 || file1 || file2 || file3) {
        throw new ApiError(400, 'Must input attachment');
      }

      return plainToClass(LessonDto, await this.lessonService.createLesson(createLessonDto));
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
        const attachmentQuestion = await this.fileService.getFileById(lesson.attachmentQuestion);
        const attachment0 = await this.fileService.getFileById(lesson.attachment0);
        const attachment1 = await this.fileService.getFileById(lesson.attachment1);
        const attachment2 = await this.fileService.getFileById(lesson.attachment2);
        const attachment3 = await this.fileService.getFileById(lesson.attachment3);

        data.push(plainToClass(LessonDto, {
          ...lesson,
          attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
          attachment0: plainToClass(FileDto, attachment0),
          attachment1: plainToClass(FileDto, attachment1),
          attachment2: plainToClass(FileDto, attachment2),
          attachment3: plainToClass(FileDto, attachment3),
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

  @Get('/:id')
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

      const attachmentQuestion = await this.fileService.getFileById(lesson.attachmentQuestion);
      const attachment0 = await this.fileService.getFileById(lesson.attachment0);
      const attachment1 = await this.fileService.getFileById(lesson.attachment1);
      const attachment2 = await this.fileService.getFileById(lesson.attachment2);
      const attachment3 = await this.fileService.getFileById(lesson.attachment3);

      return plainToClass(LessonDto, {
        ...lesson,
        attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
        attachment0: plainToClass(FileDto, attachment0),
        attachment1: plainToClass(FileDto, attachment1),
        attachment2: plainToClass(FileDto, attachment2),
        attachment3: plainToClass(FileDto, attachment3),
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

  @Put('/:id')
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
      const file0 = await this.fileService.getFileById(updateLessonDto.attachment0);
      const file1 = await this.fileService.getFileById(updateLessonDto.attachment1);
      const file2 = await this.fileService.getFileById(updateLessonDto.attachment2);
      const file3 = await this.fileService.getFileById(updateLessonDto.attachment3);

      if (!file || !file0 || file1 || file2 || file3) {
        throw new ApiError(400, 'Must input attachment');
      }

      await this.lessonService.updateLessonById(id, updateLessonDto);

      const updatedLesson = await this.lessonService.getLessonById(id);
      const attachmentQuestion = await this.fileService.getFileById(updatedLesson.attachmentQuestion);
      const attachment0 = await this.fileService.getFileById(updatedLesson.attachment0);
      const attachment1 = await this.fileService.getFileById(updatedLesson.attachment1);
      const attachment2 = await this.fileService.getFileById(updatedLesson.attachment2);
      const attachment3 = await this.fileService.getFileById(updatedLesson.attachment3);

      return plainToClass(LessonDto, {
        ...lesson,
        attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
        attachment0: plainToClass(FileDto, attachment0),
        attachment1: plainToClass(FileDto, attachment1),
        attachment2: plainToClass(FileDto, attachment2),
        attachment3: plainToClass(FileDto, attachment3),
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

  @Delete('/:id')
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
