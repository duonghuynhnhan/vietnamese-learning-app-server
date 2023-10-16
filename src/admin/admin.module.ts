import { Module } from '@nestjs/common';
import { TopicService } from 'src/topic/topic.service';
import { LessonService } from 'src/lesson/lesson.service';
import { FileService } from 'src/file/file.service';
import { PrismaService } from 'prisma/prisma.service';
import { AdminController } from './admin.controller';

@Module({
  controllers: [AdminController],
  providers: [TopicService, LessonService, FileService, PrismaService, LessonService],
})
export class AdminModule { }
