import { Injectable } from '@nestjs/common';
import { country } from '@prisma/client';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class CountryService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  getAllCountries(): Promise<country[]> {
    return this.prismaService.country.findMany({
      orderBy: {
        nameEN: 'asc',
      },
    });
  }

  getCountryById(id: string): Promise<country> {
    return this.prismaService.country.findUnique({
      where: {
        id,
      },
    });
  }
}
