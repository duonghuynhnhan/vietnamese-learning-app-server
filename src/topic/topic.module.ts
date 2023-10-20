import { Module } from '@nestjs/common';
import { PassportModule } from '@nestjs/passport';
import { AuthModule } from 'src/auth/auth.module';
import { FileService } from 'src/file/file.service';
import { PrismaService } from 'prisma/prisma.service';
import { TopicProgressService } from 'src/topic-progress/topic-progress.service';
import { AccountService } from 'src/account/account.service';
import { TopicController } from './topic.controller';
import { TopicService } from './topic.service';
import { LessonService } from 'src/lesson/lesson.service';
import { LessonProgressService } from 'src/lesson-progress/lesson-progress.service';

@Module({
  imports: [PassportModule, AuthModule],
  controllers: [TopicController],
  providers: [TopicService, PrismaService, FileService, TopicProgressService, AccountService, LessonService, LessonProgressService],
  exports: [TopicService]
})
export class TopicModule { }
