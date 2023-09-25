import { Module } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';
import { CountryController } from './country.controller';
import { CountryService } from './country.service';
import { PassportModule } from '@nestjs/passport';
import { AuthModule } from 'src/auth/auth.module';

@Module({
  imports: [PassportModule, AuthModule],
  controllers: [CountryController],
  providers: [CountryService, PrismaService],
  exports: [CountryService],
})
export class CountryModule { }
