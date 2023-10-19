import { Injectable } from '@nestjs/common';
import { lesson } from '@prisma/client';
import { PrismaService } from 'prisma/prisma.service';
import { ApiSuccess } from 'src/api-responses';
import { CreateLessonDto, UpdateLessonDto } from './dto';

@Injectable()
export class LessonService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  createLesson(createLessonDto: CreateLessonDto): Promise<lesson> {
    const createdAt = new Date().toISOString();

    return this.prismaService.lesson.create({
      data: {
        type: createLessonDto.type,
        attachmentQuestion: createLessonDto.attachmentQuestion,
        question: createLessonDto.question,
        rightAnswer: createLessonDto.rightAnswer,
        wrongAnswer1: createLessonDto.wrongAnswer1,
        wrongAnswer2: createLessonDto.wrongAnswer2,
        wrongAnswer3: createLessonDto.wrongAnswer3,
        topic: {
          connect: {
            id: createLessonDto.topicId,
          },
        },
        createdAt,
      },
    });
  }

  getAllLessonsByTopicId(topicId: string): Promise<lesson[]> {
    return this.prismaService.lesson.findMany({
      where: {
        topicId,
        deletedAt: null,
      },
      orderBy: {
        createdAt: 'asc',
      },
    });
  }

  getLessonById(id: string): Promise<lesson> {
    return this.prismaService.lesson.findUnique({
      where: {
        id,
        deletedAt: null,
      },
    });
  }

  updateLessonById(id: string, updateLessonDto: UpdateLessonDto): Promise<lesson> {
    const updatedAt = new Date().toISOString();

    return this.prismaService.lesson.update({
      where: {
        id,
      },
      data: {
        type: updateLessonDto.type,
        attachmentQuestion: updateLessonDto.attachmentQuestion,
        question: updateLessonDto.question,
        rightAnswer: updateLessonDto.rightAnswer,
        wrongAnswer1: updateLessonDto.wrongAnswer1,
        wrongAnswer2: updateLessonDto.wrongAnswer2,
        wrongAnswer3: updateLessonDto.wrongAnswer3,
        updatedAt,
      },
    });
  }

  async deleteLessonById(id: string): Promise<ApiSuccess> {
    const deletedAt = new Date().toISOString();

    await this.prismaService.lesson.update({
      where: {
        id,
      },
      data: {
        deletedAt,
      },
    });

    return { statusCode: 200, message: 'Delete lesson successfully' };
  }
}
