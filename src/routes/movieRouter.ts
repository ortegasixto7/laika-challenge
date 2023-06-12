import { Request, Response, Router } from 'express'
import { RequestService } from '../infrastructure/RequestService'
import { moviePersistence } from '../infrastructure/DependencyInjector'
import { CreateRequest } from '../core/movie/useCases/create/CreateRequest'
import { CreateUseCase } from '../core/movie/useCases/create/CreateUseCase'

const router = Router()

router.post('/v1', async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    await new CreateUseCase(moviePersistence).execute(new CreateRequest(req.body))
  }, res)
})

export const movieRouter = router