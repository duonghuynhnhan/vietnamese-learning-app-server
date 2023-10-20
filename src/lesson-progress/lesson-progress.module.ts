import { Module } from '@nestjs/common';
import { AuthModule } from 'src/auth/auth.module';
import { PassportModule } from '@nestjs/passport';
import { PrismaService } from 'prisma/prisma.service';
import { FileService } from 'src/file/file.service';
import { TopicService } from 'src/topic/topic.service';
import { LessonService } from 'src/lesson/lesson.service';
import { AccountService } from 'src/account/account.service';
import { LessonProgressController } from './lesson-progress.controller';
import { LessonProgressService } from './lesson-progress.service';
import { TopicProgressService } from 'src/topic-progress/topic-progress.service';

@Module({
  imports: [AuthModule, PassportModule],
  controllers: [LessonProgressController],
  providers: [LessonProgressService, PrismaService, TopicService, LessonService, AccountService, FileService, TopicProgressService],
  exports: [LessonProgressService],
})
export class LessonProgressModule { }
