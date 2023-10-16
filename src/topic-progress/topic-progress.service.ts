import { Injectable } from '@nestjs/common';
import { topic_progress } from '@prisma/client';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class TopicProgressService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  getAllTopicProgresses(accountId: string): Promise<topic_progress[]> {
    return this.prismaService.topic_progress.findMany({
      where: {
        accountId,
        deletedAt: null,
      },
      orderBy: {
        createdAt: 'asc',
        progress: 'desc',
        lastModifiedAt: 'desc',
      },
    });
  }
}
