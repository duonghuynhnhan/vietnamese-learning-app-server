import { registerDecorator, ValidationOptions } from 'class-validator';
import { LessonType } from 'src/lesson/enum';

export function IsLessonType(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isLessonType',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          const type = Object.values(LessonType);

          return type.includes(value);
        },

        defaultMessage(): string {
          return `${propertyName} must be lesson type`;
        },
      },
    });
  };
}
