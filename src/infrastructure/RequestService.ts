import { BadRequestException } from './exception/BadRequestException';
import { NotFoundException } from './exception/NotFoundException';
import { Response } from 'express';

export class RequestService {

  static async wrapper(callbackFunction: Function, res: Response): Promise<any> {
    try {
      const response = await callbackFunction();
      res.status(200).json(response ? response : undefined);
    } catch (error) {
      if (error instanceof BadRequestException) {
        console.warn(`BAD_REQUEST ${error.message}`);
        res.status(400).json({ error: error.message });
      } else if (error instanceof NotFoundException) {
        console.warn(`NOT_FOUND ${error.message}`);
        res.status(404).json({ error: error.message });
      } else {
        console.error(error);
        res.status(500).json({ error: 'INTERNAL_ERROR' });
      }
    }
  }
}
