import { Module } from '@nestjs/common';
import { AuthModule } from 'src/auth/auth.module';
import { PassportModule } from '@nestjs/passport';
import { PrismaService } from 'prisma/prisma.service';
import { LessonProgressController } from './lesson-progress.controller';
import { LessonProgressService } from './lesson-progress.service';

@Module({
  imports: [AuthModule, PassportModule],
  controllers: [LessonProgressController],
  providers: [LessonProgressService, PrismaService],
  exports: [LessonProgressService],
})
export class LessonProgressModule { }
