import { registerDecorator, ValidationOptions } from 'class-validator';
import { LessonProgressStatus } from 'src/lesson-progress/enum';

export function IsLesonProgressStatus(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isLesonProgressStatus',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          const type = Object.values(LessonProgressStatus);

          return type.includes(value);
        },

        defaultMessage(): string {
          return `${propertyName} must be lesson progress status`;
        },
      },
    });
  };
}
