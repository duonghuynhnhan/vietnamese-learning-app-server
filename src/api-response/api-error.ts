const ERROR = {
  '300': 'Multiple Choices',
  '302': 'Found(Redirect)',
  '304': 'Not Modified',
  '400': 'Bad Request',
  '401': 'Unauthorized',
  '403': 'Forbidden',
  '404': 'Not Found',
  '500': 'Internal Server Error',
  '502': 'Bad Gateway',
  '503': 'Service Unavailable',
  '504': 'Gateway Timeout',
};

export class ApiError extends Error {
  constructor(
    private readonly statusCode: number,
  ) {
    super(ERROR[statusCode]);
    this.name = this.constructor.name;
    Error.captureStackTrace(this, this.constructor);
  }
}

