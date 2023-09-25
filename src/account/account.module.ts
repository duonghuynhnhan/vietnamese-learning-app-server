import { Module } from '@nestjs/common';
import { PassportModule } from '@nestjs/passport';
import { AuthModule } from 'src/auth/auth.module';
import { PrismaService } from 'prisma/prisma.service';
import { FileService } from 'src/file/file.service';
import { CountryService } from 'src/country/country.service';
import { AccountController } from './account.controller';
import { AccountService } from './account.service';

@Module({
  imports: [PassportModule, AuthModule],
  controllers: [AccountController],
  providers: [AccountService, PrismaService, FileService, CountryService],
  exports: [AccountService],
})
export class AccountModule { }
