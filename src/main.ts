import { NestFactory } from '@nestjs/core';
import { ConfigService } from '@nestjs/config';
import { ValidationPipe } from '@nestjs/common';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import * as fs from 'fs';
import * as ip from 'ip';
import { networkInterfaces } from 'os';
import { AppModule } from './app.module';

async function getWifiIpAddress() {
  const interfaces = networkInterfaces();
  const wifiInterface = interfaces['Wi-Fi'];

  if (!wifiInterface) {
    return '';
  }

  const wifiIPv4 = wifiInterface.find((info) => info.family === 'IPv4');

  if (!wifiIPv4) {
    return '';
  }

  return wifiIPv4.address;
}

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const configService = app.get(ConfigService);
  app.setGlobalPrefix('api/v1');
  const PORT = configService.get('PORT');

  app.useGlobalPipes(new ValidationPipe());

  const configDocument = new DocumentBuilder()
    .setTitle(configService.get('API_TITLE'))
    .setDescription(configService.get('API_DESCRIPTION'))
    .setVersion(configService.get('API_VERSION'))
    .addBearerAuth()
    .build();

  const document = SwaggerModule.createDocument(app, configDocument);
  fs.writeFileSync('./public/swagger-spec.json', JSON.stringify(document));
  SwaggerModule.setup(configService.get('API_NAME'), app, document);

  app.enableCors({
    origin: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'],
    allowedHeaders: ['Content-Type', 'Authorization'],
  });

  await app.listen(PORT);

  const ipAddress = await getWifiIpAddress();
  if (ipAddress) {
    console.log(`Server is running at address: \n\t\thttp://localhost:${PORT} \n\tor \n\t\thttp://${ipAddress}:${PORT}`);
    console.log(`\nUsing document for API at address: \n\t\thttp://localhost:${PORT}/api \n\tor \n\t\thttp://${ipAddress}:${PORT}/api`);
  } else {
    console.log(`Server is running at address: \n\t\thttp://localhost:${PORT} \n\tor \n\t\thttp://${ip.address()}:${PORT}`);
    console.log(`\nUsing document for API at address: \n\t\thttp://localhost:${PORT}/api \n\tor \n\t\thttp://${ip.address()}:${PORT}/api`);
  }
}

bootstrap();
