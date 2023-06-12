import { Request, Response, Router } from 'express'
import { RequestService } from '../infrastructure/RequestService'
import { moviePersistence } from '../infrastructure/DependencyInjector'
import { CreateRequest } from '../core/movie/useCases/create/CreateRequest'
import { CreateUseCase } from '../core/movie/useCases/create/CreateUseCase'
import { UpdateRequest } from '../core/movie/useCases/update/UpdateRequest'
import { UpdateUseCase } from '../core/movie/useCases/update/UpdateUseCase'

const router = Router()

router.patch('/:id/v1', async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    req.body.id = req.params.id
    await new UpdateUseCase(moviePersistence).execute(new UpdateRequest(req.body))
  }, res)
})

router.post('/v1', async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    await new CreateUseCase(moviePersistence).execute(new CreateRequest(req.body))
  }, res)
})

export const movieRouter = router