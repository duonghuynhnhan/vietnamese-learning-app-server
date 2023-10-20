import { Module } from '@nestjs/common';
import { PassportModule } from '@nestjs/passport';
import { AuthModule } from 'src/auth/auth.module';
import { PrismaService } from 'prisma/prisma.service';
import { FileService } from 'src/file/file.service';
import { TopicService } from 'src/topic/topic.service';
import { LessonProgressService } from 'src/lesson-progress/lesson-progress.service';
import { AccountService } from 'src/account/account.service';
import { LessonController } from './lesson.controller';
import { LessonService } from './lesson.service';

@Module({
  imports: [PassportModule, AuthModule],
  controllers: [LessonController],
  providers: [LessonService, PrismaService, FileService, TopicService, LessonProgressService, AccountService],
  exports: [LessonService],
})
export class LessonModule { }
