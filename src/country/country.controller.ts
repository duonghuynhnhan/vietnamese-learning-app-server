import { Controller, Get } from '@nestjs/common';
import { plainToClass } from 'class-transformer';
import { ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { ApiError } from 'src/api-responses';
import { CountryService } from './country.service';
import { CountryDto } from './dto';

@Controller('country')
@ApiTags('Country')
@ApiExtraModels(CountryDto)
export class CountryController {
  constructor(
    private countryService: CountryService,
  ) { }

  @Get()
  @ApiOperation({ summary: 'Lấy danh sách country' })
  @ApiOkResponse({
    schema: {
      title: 'Get All Countries',
      type: 'array',
      items: { $ref: getSchemaPath(CountryDto) },
    },
  })
  async getAllCountries(): Promise<CountryDto[]> {
    try {
      const data: CountryDto[] = [];
      const countries = await this.countryService.getAllCountries();

      for (const country of countries) {
        data.push(plainToClass(CountryDto, country));
      }

      return data;
    } catch (error) {
      console.log(error);
      throw new ApiError(500);
    }
  }
}