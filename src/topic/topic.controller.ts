import { Body, Controller, Delete, Get, Param, Post, Put, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiBody, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { AuthGuard } from '@nestjs/passport';
import { FileService } from 'src/file/file.service';
import { plainToClass } from 'class-transformer';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { GetCurrentAccount, Role } from 'src/auth/decorators';
import { AccountRole } from 'src/account/enum';
import { FileDto } from 'src/file/dto';
import { account } from '@prisma/client';
import { TopicProgressService } from 'src/topic-progress/topic-progress.service';
import { TopicService } from './topic.service';
import { CreateTopicDto, TopicDto, UpdateTopicDto } from './dto';

@Controller('topic')
@ApiTags('Topic')
@ApiExtraModels(TopicDto, CreateTopicDto, UpdateTopicDto)
@ApiBearerAuth()
@UseGuards(AuthGuard())
export class TopicController {
  constructor(
    private topicService: TopicService,
    private topicProgressService: TopicProgressService,
    private fileService: FileService,
  ) { }

  
}
