import { ApiProperty } from '@nestjs/swagger';

export class FileDto {
  @ApiProperty({
    type: "string",
    description: "This is file's id"
  })
  id: string;

  @ApiProperty({
    type: "string",
    description: "This is file's field name"
  })
  fieldName: string;

  @ApiProperty({
    type: "string",
    description: "This is file's field name"
  })
  originalName: string;

  @ApiProperty({
    type: "string",
    description: "This is file's encoding"
  })
  encoding: string;

  @ApiProperty({
    type: "string",
    description: "This is file's mimetype"
  })
  mimeType: string;

  @ApiProperty({
    type: "string",
    description: "This is file's file name"
  })
  fileName: string;

  @ApiProperty({
    type: "string",
    description: "This is file's url"
  })
  url: string;

  @ApiProperty({
    type: "number",
    description: "This is file's size"
  })
  size: number;

  @ApiProperty({
    type: "string",
    description: "This is object's id"
  })
  objectId: string;

  @ApiProperty({
    type: "string",
    description: "This is object's type"
  })
  objectType: string;
}
