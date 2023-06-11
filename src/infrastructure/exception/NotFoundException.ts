import { ExceptionCodeEnum } from './ExceptionCodeEnum';

export class NotFoundException extends Error {
  constructor(message: ExceptionCodeEnum) {
    super();
    this.message = Object.keys(ExceptionCodeEnum)[Object.values(ExceptionCodeEnum).indexOf(message as unknown as ExceptionCodeEnum)];
  }
}
