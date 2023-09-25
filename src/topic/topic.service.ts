import { Injectable } from '@nestjs/common';
import { topic } from '@prisma/client';
import { PrismaService } from 'prisma/prisma.service';
import { ApiSuccess } from 'src/api-responses';
import { CreateTopicDto, UpdateTopicDto } from './dto';

@Injectable()
export class TopicService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  createTopic(createTopicDto: CreateTopicDto): Promise<topic> {
    const createdAt = new Date().toISOString();

    return this.prismaService.topic.create({
      data: {
        name: createTopicDto.name,
        avatar: createTopicDto.avatar,
        createdAt,
      },
    });
  }

  getAllTopics(): Promise<topic[]> {
    return this.prismaService.topic.findMany({
      where: {
        deletedAt: null,
      },
      orderBy: {
        createdAt: 'asc',
      },
    });
  }

  getTopicById(id: string): Promise<topic> {
    return this.prismaService.topic.findUnique({
      where: {
        id,
        deletedAt: null,
      },
    });
  }

  updateTopicById(id: string, updateTopicDto: UpdateTopicDto): Promise<topic> {
    const updatedAt = new Date().toISOString();

    return this.prismaService.topic.update({
      where: {
        id,
      },
      data: {
        name: updateTopicDto?.name,
        avatar: updateTopicDto?.avatar,
        updatedAt,
      },
    });
  }

  async deleteTopicById(id: string): Promise<ApiSuccess> {
    const deletedAt = new Date().toISOString();

    await this.prismaService.topic.update({
      where: {
        id,
      },
      data: {
        deletedAt,
      },
    });

    return { statusCode: 200, message: 'Delete topic successfully' };
  }
}
