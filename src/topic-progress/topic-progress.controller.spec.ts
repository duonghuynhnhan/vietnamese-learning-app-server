import { Test, TestingModule } from '@nestjs/testing';
import { TopicProgressController } from './topic-progress.controller';

describe('TopicProgressController', () => {
  let controller: TopicProgressController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [TopicProgressController],
    }).compile();

    controller = module.get<TopicProgressController>(TopicProgressController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
