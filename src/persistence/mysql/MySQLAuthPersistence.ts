import { MySQLConnection } from "./MySQLConnection";
import { IAuthPersistence } from '../../external/auth/IAuthPersistence'
import { Auth } from "../../external/auth/Auth";

export class MySQLAuthPersistence extends MySQLConnection implements IAuthPersistence {

  constructor() {
    super()
  }

  async getByEmailOrNull(email: string): Promise<Auth | null> {
    const result = await this.authTable.findOne({ where: { email } })
    if (!result) return null
    return result.toJSON()
  }
}

