import { Module } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';
import { TopicProgressController } from './topic-progress.controller';
import { TopicProgressService } from './topic-progress.service';

@Module({
  imports: [],
  controllers: [TopicProgressController],
  providers: [TopicProgressService, PrismaService],
  exports: [TopicProgressService],
})
export class TopicProgressModule { }
