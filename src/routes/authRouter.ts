import { Request, Response, Router } from 'express'
import { RequestService } from '../infrastructure/RequestService'
import { authPersistence, hashService } from '../infrastructure/DependencyInjector'
import { SignInRequest } from '../external/auth/useCases/signIn/SignInRequest'
import { SignInUseCase } from '../external/auth/useCases/signIn/SignInUseCase'

const router = Router()

router.post('/sign-in/v1', async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    return await new SignInUseCase(authPersistence, hashService).execute(new SignInRequest(req.body))
  }, res)
})

export const authRouter = router