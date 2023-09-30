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
@ApiBearerAuth()
@UseGuards(AuthGuard())
export class LessonController {
  constructor(
    private lessonService: LessonService,
    private topicService: TopicService,
    private fileService: FileService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Tạo mới lesson' })
  @Role(AccountRole.Admin)
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
  async createLesson(createLessonDto: CreateLessonDto): Promise<LessonDto> {
    try {
      const { avatar, topicId } = createLessonDto;

      const topic = await this.topicService.getTopicById(topicId);
      if (!topic) {
        throw new ApiError(400, 'Invalid topic');
      }

      const file = await this.fileService.getFileById(avatar);
      if (!file || !file.mimeType.startsWith('image/')) {
        throw new ApiError(400, 'Must input image file');
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
        const avatar = await this.fileService.getFileById(lesson.avatar);

        data.push(plainToClass(LessonDto, { ...lesson, avatar: plainToClass(FileDto, avatar) }));
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

      const avatar = plainToClass(FileDto, await this.fileService.getFileById(lesson.avatar));

      return plainToClass(LessonDto, { ...lesson, avatar });
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

      const avatar = await this.fileService.getFileById(updateLessonDto.avatar);
      if (!avatar || !avatar.mimeType.startsWith('image/')) {
        throw new ApiError(400, 'Input image file');
      }

      await this.lessonService.updateLessonById(id, updateLessonDto);

      const updatedLesson = await this.lessonService.getLessonById(id);
      const updatedAvatar = plainToClass(FileDto, await this.fileService.getFileById(updatedLesson.avatar));

      return plainToClass(LessonDto, { ...updatedLesson, avatar: updatedAvatar });
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
