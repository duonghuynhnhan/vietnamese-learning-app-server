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

}
