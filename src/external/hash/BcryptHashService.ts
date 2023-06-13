import bcrypt from "bcrypt";
import { IHashService } from "./IHashService";

export class BcryptHashService implements IHashService {
  private readonly SALT_ROUNDS = 10


  async hash(value: string): Promise<string> {
    return await bcrypt.hash(value, this.SALT_ROUNDS)
  }

  async compare(plainValue: string, hashedValue: string): Promise<boolean> {
    return await bcrypt.compare(plainValue, hashedValue)
  }

}