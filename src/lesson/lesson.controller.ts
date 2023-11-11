import { Controller, Get, Param, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { FileService } from 'src/file/file.service';
import { plainToClass } from 'class-transformer';
import { ApiError } from 'src/api-responses';
import { GetCurrentAccount, Role } from 'src/auth/decorators';
import { AccountRole } from 'src/account/enum';
import { FileDto } from 'src/file/dto';
import { TopicService } from 'src/topic/topic.service';
import { LessonProgressService } from 'src/lesson-progress/lesson-progress.service';
import { LessonProgressDto } from 'src/lesson-progress/dto';
import { account } from '@prisma/client';
import { AccountService } from 'src/account/account.service';
import { LessonService } from './lesson.service';
import { AnswerDto, CreateLessonDto, LessonDataDto, LessonDto, UpdateLessonDto } from './dto';

@Controller('lesson')
@ApiTags('Lesson')
@ApiExtraModels(LessonDto, CreateLessonDto, UpdateLessonDto, LessonProgressDto, LessonDataDto)
@ApiBearerAuth()
@UseGuards(AuthGuard())
@Role(AccountRole.User)
export class LessonController {
  constructor(
    private lessonService: LessonService,
    private topicService: TopicService,
    private lessonProgressService: LessonProgressService,
    private fileService: FileService,
    private accountService: AccountService,
  ) { }

  @Get('topic/:id')
  @ApiOperation({ summary: 'Lấy danh sách lesson của topic' })
  @ApiOkResponse({
    schema: {
      title: 'Get All Lesson Of Topic',
      type: 'array',
      items: {
        $ref: getSchemaPath(LessonProgressDto),
      },
    }
  })
  async getAllLessonsByTopicId(@GetCurrentAccount() user: account, @Param('id') id: string): Promise<LessonProgressDto[]> {
    try {
      const learnedLessons: LessonProgressDto[] = [];
      const unlearnedLessons: LessonProgressDto[] = [];
      const account = await this.accountService.getAccountByUsername(user.username);
      const topic = await this.topicService.getTopicById(id);

      if (!topic) {
        throw new ApiError(404, 'Topic not found');
      }

      const lessons = await this.lessonService.getAllLessonsByTopicId(id);
      const lessonsInProgress = await this.lessonProgressService.getAllLessonProgress(id, account.id);

      const lessonIdsInProgress = lessonsInProgress.map(progress => progress.lessonId);
      const lessonsNotInProgress = lessons.filter(lesson => !lessonIdsInProgress.includes(lesson.id));
      const lessonIdsProgressing = lessonsInProgress.map(progress => progress.lessonId);
      const lessonsProgressing = lessons.filter(lesson => lessonIdsProgressing.includes(lesson.id));


      for (const lessonNotInProgress of lessonsNotInProgress) {
        const attachmentQuestion = await this.fileService.getFileById(lessonNotInProgress.attachmentQuestion ? lessonNotInProgress.attachmentQuestion : '');
        const attachment0 = await this.fileService.getFileById(lessonNotInProgress.attachment0 ? lessonNotInProgress.attachment0 : '');
        const attachment1 = await this.fileService.getFileById(lessonNotInProgress.attachment1 ? lessonNotInProgress.attachment1 : '');
        const attachment2 = await this.fileService.getFileById(lessonNotInProgress.attachment2 ? lessonNotInProgress.attachment2 : '');
        const attachment3 = await this.fileService.getFileById(lessonNotInProgress.attachment3 ? lessonNotInProgress.attachment3 : '');

        const answers: AnswerDto[] = [];
        answers.push(plainToClass(AnswerDto, {
          answer: lessonNotInProgress.rightAnswer,
          attachment: attachment0 ? plainToClass(FileDto, attachment0) : null,
          isCorrect: true,
        }));
        answers.push(plainToClass(AnswerDto, {
          answer: lessonNotInProgress.wrongAnswer1,
          attachment: attachment1 ? plainToClass(FileDto, attachment1) : null,
          isCorrect: false,
        }));
        answers.push(plainToClass(AnswerDto, {
          answer: lessonNotInProgress.wrongAnswer2,
          attachment: attachment2 ? plainToClass(FileDto, attachment2) : null,
          isCorrect: false,
        }));
        answers.push(plainToClass(AnswerDto, {
          answer: lessonNotInProgress.wrongAnswer3,
          attachment: attachment3 ? plainToClass(FileDto, attachment3) : null,
          isCorrect: false,
        }));

        unlearnedLessons.push(plainToClass(LessonProgressDto, {
          lesson: plainToClass(LessonDto, {
            id: lessonNotInProgress.id,
            type: lessonNotInProgress.type,
            question: lessonNotInProgress.question,
            attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
            answers,
          }),
          status: 'Unknown',
          lastModifiedAt: null,
        }));
      }

      for (const lessonProgressing of lessonsProgressing) {
        const lessonProgess = await this.lessonProgressService.getLessonProgressById(account.id, lessonProgressing.topicId, lessonProgressing.id);

        const attachmentQuestion = await this.fileService.getFileById(lessonProgressing.attachmentQuestion ? lessonProgressing.attachmentQuestion : '');
        const attachment0 = await this.fileService.getFileById(lessonProgressing.attachment0 ? lessonProgressing.attachment0 : '');
        const attachment1 = await this.fileService.getFileById(lessonProgressing.attachment1 ? lessonProgressing.attachment1 : '');
        const attachment2 = await this.fileService.getFileById(lessonProgressing.attachment2 ? lessonProgressing.attachment2 : '');
        const attachment3 = await this.fileService.getFileById(lessonProgressing.attachment3 ? lessonProgressing.attachment3 : '');

        const answers: AnswerDto[] = [];
        answers.push(plainToClass(AnswerDto, {
          answer: lessonProgressing.rightAnswer,
          attachment: attachment0 ? plainToClass(FileDto, attachment0) : null,
          isCorrect: true,
        }));
        answers.push(plainToClass(AnswerDto, {
          answer: lessonProgressing.wrongAnswer1,
          attachment: attachment1 ? plainToClass(FileDto, attachment1) : null,
          isCorrect: false,
        }));
        answers.push(plainToClass(AnswerDto, {
          answer: lessonProgressing.wrongAnswer2,
          attachment: attachment2 ? plainToClass(FileDto, attachment2) : null,
          isCorrect: false,
        }));
        answers.push(plainToClass(AnswerDto, {
          answer: lessonProgressing.wrongAnswer3,
          attachment: attachment3 ? plainToClass(FileDto, attachment3) : null,
          isCorrect: false,
        }));

        learnedLessons.push(plainToClass(LessonProgressDto, {
          lesson: plainToClass(LessonDto, {
            id: lessonProgressing.id,
            type: lessonProgressing.type,
            question: lessonProgressing.question,
            attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
            answers,
          }),
          status: lessonProgess.status,
          lastModifiedAt: lessonProgess.lastModifiedAt,
        }));
      }

      return [].concat(unlearnedLessons, learnedLessons);
    } catch (error) {
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

      const attachmentQuestion = await this.fileService.getFileById(lesson.attachmentQuestion ? lesson.attachmentQuestion : '');
      const attachment0 = await this.fileService.getFileById(lesson.attachment0 ? lesson.attachment0 : '');
      const attachment1 = await this.fileService.getFileById(lesson.attachment1 ? lesson.attachment1 : '');
      const attachment2 = await this.fileService.getFileById(lesson.attachment2 ? lesson.attachment2 : '');
      const attachment3 = await this.fileService.getFileById(lesson.attachment3 ? lesson.attachment3 : '');

      const answers: AnswerDto[] = [];
      answers.push(plainToClass(AnswerDto, {
        answer: lesson.rightAnswer,
        attachment: attachment0 ? plainToClass(FileDto, attachment0) : null,
        isCorrect: true,
      }));
      answers.push(plainToClass(AnswerDto, {
        answer: lesson.wrongAnswer1,
        attachment: attachment1 ? plainToClass(FileDto, attachment1) : null,
        isCorrect: false,
      }));
      answers.push(plainToClass(AnswerDto, {
        answer: lesson.wrongAnswer2,
        attachment: attachment2 ? plainToClass(FileDto, attachment2) : null,
        isCorrect: false,
      }));
      answers.push(plainToClass(AnswerDto, {
        answer: lesson.wrongAnswer3,
        attachment: attachment3 ? plainToClass(FileDto, attachment3) : null,
        isCorrect: false,
      }));

      return plainToClass(LessonDto, {
        id: lesson.id,
        type: lesson.type,
        question: lesson.question,
        attachmentQuestion: plainToClass(FileDto, attachmentQuestion),
        answers,
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
}
