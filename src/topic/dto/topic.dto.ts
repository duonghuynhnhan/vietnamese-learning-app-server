import { ApiProperty } from "@nestjs/swagger";

export class TopicDto {
  @ApiProperty({
    type: 'string',
    description: 'This is id',
  })
  id: string;

  @ApiProperty({
    type: 'string',
    description: 'This is name',
  })
  name: string;

  @ApiProperty({
    type: 'string',
    description: 'This is avatar',
  })
  avatar: string;
}
