import { Module } from '@nestjs/common';
import { PassportModule } from '@nestjs/passport';
import { AuthModule } from 'src/auth/auth.module';
import { FileService } from 'src/file/file.service';
import { PrismaService } from 'prisma/prisma.service';
import { TopicProgressService } from 'src/topic-progress/topic-progress.service';
import { TopicController } from './topic.controller';
import { TopicService } from './topic.service';

@Module({
  imports: [PassportModule, AuthModule],
  controllers: [TopicController],
  providers: [TopicService, PrismaService, FileService, TopicProgressService],
  exports: [TopicService]
})
export class TopicModule { }
