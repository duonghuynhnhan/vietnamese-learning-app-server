import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class UploadFileDto {
  @ApiProperty({ description: 'Must input file', type: 'string', format: 'binary' })
  @IsNotEmpty()
  file: Express.Multer.File;
}
