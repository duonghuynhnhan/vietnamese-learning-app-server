import { ApiProperty } from "@nestjs/swagger";
import { TopicDto } from "src/topic/dto";

export class TopicProgressDto {
  @ApiProperty({

  })
  topic: TopicDto;

  status: string;

  progress: number;

  lastModifiedAt: string;
}
