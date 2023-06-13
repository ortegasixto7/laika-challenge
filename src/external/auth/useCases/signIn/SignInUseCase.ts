import { ExceptionCodeEnum } from '../../../../infrastructure/exception/ExceptionCodeEnum'
import { BadRequestException } from '../../../../infrastructure/exception/BadRequestException'
import { IUseCaseQuery } from '../../../../infrastructure/IUseCase'
import { SignInRequest } from './SignInRequest'
import { SignInResponse } from './SignInResponse'
import { SignInRequestValidation } from './SignInRequestValidation'
import { IAuthPersistence } from '../../IAuthPersistence'
import { IHashService } from '../../../hash/IHashService'
import jwt from 'jsonwebtoken'

export class SignInUseCase implements IUseCaseQuery<SignInRequest, SignInResponse>{
  constructor(private authPersistence: IAuthPersistence, private hashService: IHashService) { }

  async execute(request: SignInRequest): Promise<SignInResponse> {
    new SignInRequestValidation().validate(request)

    const authUser = await this.authPersistence.getByEmailOrNull(request.email)
    if (!authUser) throw new BadRequestException(ExceptionCodeEnum.INVALID_AUTH)
    const isPasswordValid = await this.hashService.compare(request.password, authUser.password);
    if (!isPasswordValid) throw new BadRequestException(ExceptionCodeEnum.INVALID_AUTH)
    const token = jwt.sign({ user: { id: authUser.id, email: authUser.email } }, process.env.JWT_SECRET!, { expiresIn: '7d' });
    return { token }
  }
}