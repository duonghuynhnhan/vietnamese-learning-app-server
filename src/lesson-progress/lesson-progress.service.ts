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
        topic_progressAccountId: createLessonProgressDtoTemplate.accountId,
        topic_progressTopicId: createLessonProgressDtoTemplate.topicId,
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

  getLessonProgressById(accountId: string, topicId: string, lessonId: string): Promise<lesson_progress> {
    return this.prismaService.lesson_progress.findUnique({
      where: {
        deletedAt: null,
        topic_progressAccountId_lessonId_topic_progressTopicId: {
          topic_progressAccountId: accountId,
          topic_progressTopicId: topicId,
          lessonId,
        }
      },
    });
  }

  updateLessonProgressStatus(accountId: string, topicId: string, lessonId: string, status: string): Promise<lesson_progress> {
    const updatedAt = new Date().toISOString();
    const lastModifiedAt = new Date().toISOString();

    return this.prismaService.lesson_progress.update({
      where: {
        deletedAt: null,
        topic_progressAccountId_lessonId_topic_progressTopicId: {
          topic_progressAccountId: accountId,
          topic_progressTopicId: topicId,
          lessonId,
        }
      },
      data: {
        status,
        updatedAt,
        lastModifiedAt,
      },
    });
  }
}
