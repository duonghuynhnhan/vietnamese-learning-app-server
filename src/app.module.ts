import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { ServeStaticModule } from '@nestjs/serve-static';
import { APP_GUARD } from '@nestjs/core';
import { join } from 'path';
import { configValidationSchema } from '../config/config.schema';
import { AccountModule } from './account/account.module';
import { AuthModule } from './auth/auth.module';
import { FileModule } from './file/file.module';
import { CountryModule } from './country/country.module';
import { TopicModule } from './topic/topic.module';
import { LessonModule } from './lesson/lesson.module';
import { LessonProgressModule } from './lesson-progress/lesson-progress.module';
import { TopicProgressModule } from './topic-progress/topic-progress.module';
import { RoleGuard } from './auth/guard';

@Module({
  imports: [
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
    }),
    ConfigModule.forRoot({
      envFilePath: '.env',
      validationSchema: configValidationSchema,
    }),
    AuthModule,
    AccountModule,
    TopicModule,
    LessonModule,
    LessonProgressModule,
    TopicProgressModule,
    FileModule,
    CountryModule,
  ],
  controllers: [],
  providers: [
    {
      provide: APP_GUARD,
      useClass: RoleGuard,
    },
  ],
})
export class AppModule { }
