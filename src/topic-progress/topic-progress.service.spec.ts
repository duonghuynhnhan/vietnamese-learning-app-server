import { Test, TestingModule } from '@nestjs/testing';
import { TopicProgressService } from './topic-progress.service';

describe('TopicProgressService', () => {
  let service: TopicProgressService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [TopicProgressService],
    }).compile();

    service = module.get<TopicProgressService>(TopicProgressService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
