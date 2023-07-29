import * as Joi from '@hapi/joi';

export const configValidationSchema = Joi.object({
  PORT: Joi.number().default(4000),
  DATABASE_URL: Joi.string().required(),
  JWT_SECRET: Joi.string().required(),
  TOKEN_EXPIRATION: Joi.number().required(),
  API_TITLE: Joi.string().required(),
  API_DESCRIPTION: Joi.string().required(),
  API_VERSION: Joi.string().required(),
  API_NAME: Joi.string().required(),
});
