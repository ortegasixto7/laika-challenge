import crypto from 'crypto'
export class Auth {
  id: string = crypto.randomUUID()
  email: string = ''
  password: string = ''
}