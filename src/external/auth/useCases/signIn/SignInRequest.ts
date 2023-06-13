export class SignInRequest {
  email: string = ''
  password: string = ''

  constructor(request: any) {
    if (request.email) this.email = request.email
    if (request.password) this.password = request.password
  }
}