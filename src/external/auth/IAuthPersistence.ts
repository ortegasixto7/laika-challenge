import { Auth } from './Auth'
export interface IAuthPersistence {
  getByEmailOrNull(email: string): Promise<Auth | null>
}