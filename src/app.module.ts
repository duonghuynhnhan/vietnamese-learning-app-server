import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { configValidationSchema } from '../config/config.schema';
import { AccountModule } from './account/account.module';
import { AuthModule } from './auth/auth.module';
import { FileModule } from './file/file.module';
import { CountryModule } from './country/country.module';

@Module({
  imports: [
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
    }),
    ConfigModule.forRoot({
      envFilePath: '.env',
      validationSchema: configValidationSchema,
    }),
    AuthModule,
    AccountModule,
    FileModule,
    CountryModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule { }
