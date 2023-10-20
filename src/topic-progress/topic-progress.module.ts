import { Module } from '@nestjs/common';
import { PassportModule } from '@nestjs/passport';
import { PrismaService } from 'prisma/prisma.service';
import { AuthModule } from 'src/auth/auth.module';
import { AccountService } from 'src/account/account.service';
import { TopicService } from 'src/topic/topic.service';
import { TopicProgressController } from './topic-progress.controller';
import { TopicProgressService } from './topic-progress.service';

@Module({
  imports: [AuthModule, PassportModule],
  controllers: [TopicProgressController],
  providers: [TopicProgressService, PrismaService, AccountService, TopicService],
  exports: [TopicProgressService],
})
export class TopicProgressModule { }
