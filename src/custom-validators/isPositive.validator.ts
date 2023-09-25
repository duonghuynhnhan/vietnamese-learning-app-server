import { registerDecorator, ValidationOptions } from 'class-validator';

export function IsPositive(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isPositive',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          try {
            if (+value > 0) {
              return true;
            }
          }
          catch (_error) {
            return false;
          }
        },

        defaultMessage(): string {
          return `${propertyName} must be positive number`;
        },
      },
    });
  };
}
