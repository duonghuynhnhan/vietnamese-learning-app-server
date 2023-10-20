import { ApiProperty } from "@nestjs/swagger";
import { TopicDto } from "src/topic/dto";

export class TopicProgressDto {
  @ApiProperty({
    type: () => TopicDto,
    description: 'This is topic',
  })
  topic: TopicDto;

  @ApiProperty({
    type: 'string',
    description: 'This is status',
  })
  status: string;

  @ApiProperty({
    type: 'number',
    description: 'This is progress',
  })
  progress: number;

  @ApiProperty({
    type: 'string',
    description: 'This is last modified at',
  })
  lastModifiedAt: string;
}
