import { Injectable } from '@nestjs/common';
import { topic_progress } from '@prisma/client';
import { PrismaService } from 'prisma/prisma.service';
import { CreateTopicProgressTemplateDto } from './dto';
import { TopicProgressStatus } from './enum';

@Injectable()
export class TopicProgressService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  createTopicProgress(createTopicProgressTemplateDto: CreateTopicProgressTemplateDto): Promise<topic_progress> {
    const createdAt = new Date().toISOString();
    const lastModifiedAt = new Date().toISOString();

    return this.prismaService.topic_progress.create({
      data: {
        progress: 0,
        status: TopicProgressStatus.Doing,
        createdAt,
        lastModifiedAt,
        topic: {
          connect: {
            id: createTopicProgressTemplateDto.topicId,
          },
        },
        account: {
          connect: {
            id: createTopicProgressTemplateDto.accountId,
          },
        },
      },
    });
  }

  getAllTopicProgressesByAccountId(accountId: string): Promise<topic_progress[]> {
    return this.prismaService.topic_progress.findMany({
      where: {
        accountId,
        deletedAt: null,
      },
      orderBy: {
        createdAt: 'asc',
        // progress: 'desc',
        // lastModifiedAt: 'desc',
      },
    });
  }

  getCountOfTopicProgressesByAccountId(accountId: string): Promise<number> {
    return this.prismaService.topic_progress.count({
      where: {
        accountId,
        deletedAt: null,
      },
    });
  }

  getTopicProgressById(topicId: string, accountId: string): Promise<topic_progress> {
    return this.prismaService.topic_progress.findUnique({
      where: {
        accountId_topicId: {
          accountId,
          topicId,
        },
        deletedAt: null,
      },
    });
  }

  updateTopicProgressById(topicId: string, accountId: string, progress: number): Promise<topic_progress> {
    const updatedAt = new Date().toISOString();
    const lastModifiedAt = new Date().toISOString();

    return this.prismaService.topic_progress.update({
      where: {
        accountId_topicId: {
          accountId,
          topicId,
        },
        deletedAt: null,
      },
      data: {
        progress,
        updatedAt,
        lastModifiedAt,
      }
    });
  }
}
