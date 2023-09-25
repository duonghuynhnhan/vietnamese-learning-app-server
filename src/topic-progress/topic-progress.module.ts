import { Module } from '@nestjs/common';
import { TopicProgressController } from './topic-progress.controller';
import { TopicProgressService } from './topic-progress.service';

@Module({
  controllers: [TopicProgressController],
  providers: [TopicProgressService]
})
export class TopicProgressModule {}
