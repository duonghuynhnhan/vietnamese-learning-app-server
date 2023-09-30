import { ApiProperty } from "@nestjs/swagger";
import { FileDto } from "src/file/dto";

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
    type: () => FileDto,
    description: 'This is avatar',
  })
  avatar: FileDto;
}
