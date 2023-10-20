import { Injectable } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';
import { CreateLessonProgressTemplateDto } from './dto';
import { lesson_progress } from '@prisma/client';

@Injectable()
export class LessonProgressService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  createLessonProgress(createLessonProgressDtoTemplate: CreateLessonProgressTemplateDto): Promise<lesson_progress> {
    const createdAt = new Date().toISOString();
    const lastModifiedAt = new Date().toISOString();

    return this.prismaService.lesson_progress.create({
      data: {
        lessonId: createLessonProgressDtoTemplate.lessonId,
        topic_progressAccountId: createLessonProgressDtoTemplate.topicId,
        topic_progressTopicId: createLessonProgressDtoTemplate.accountId,
        status: createLessonProgressDtoTemplate.status,
        createdAt,
        lastModifiedAt,
      },
    });
  }


  getAllLessonProgress(topicId: string, accountId): Promise<lesson_progress[]> {
    return this.prismaService.lesson_progress.findMany({
      where: {
        topic_progressAccountId: accountId,
        topic_progressTopicId: topicId,
        deletedAt: null,
      },
      orderBy: {
        createdAt: 'asc',
        lastModifiedAt: 'asc',
      }
    });
  }

  getCountOfLessonByTopicId(accountId: string, topicId: string): Promise<number> {
    return this.prismaService.lesson_progress.count({
      where: {
        deletedAt: null,
        topic_progressAccountId: accountId,
        topic_progressTopicId: topicId,
      },
    });
  }
}
