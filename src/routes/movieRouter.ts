import { Request, Response, Router } from 'express'
import passport from 'passport';
import { RequestService } from '../infrastructure/RequestService'
import { moviePersistence, movieExternalService, cacheService } from '../infrastructure/DependencyInjector'
import { CreateRequest } from '../core/movie/useCases/create/CreateRequest'
import { CreateUseCase } from '../core/movie/useCases/create/CreateUseCase'
import { UpdateRequest } from '../core/movie/useCases/update/UpdateRequest'
import { UpdateUseCase } from '../core/movie/useCases/update/UpdateUseCase'
import { DeleteRequest } from '../core/movie/useCases/delete/DeleteRequest'
import { DeleteUseCase } from '../core/movie/useCases/delete/DeleteUseCase'
import { GetPaginatedRequest } from '../core/movie/useCases/getPaginated/GetPaginatedRequest'
import { GetPaginatedUseCase } from '../core/movie/useCases/getPaginated/GetPaginatedUseCase'
import { DetailRequest } from '../core/movie/useCases/detail/DetailRequest'
import { DetailUseCase } from '../core/movie/useCases/detail/DetailUseCase'

const router = Router()

router.get('/detail/v1', async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    return await new DetailUseCase(moviePersistence, movieExternalService, cacheService).execute(new DetailRequest(req.query))
  }, res)
})

router.get('/paginated/v1', async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    return await new GetPaginatedUseCase(moviePersistence).execute(new GetPaginatedRequest(req.query))
  }, res)
})

router.delete('/:id/v1', passport.authenticate('jwt', { session: false }), async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    req.body.id = req.params.id
    await new DeleteUseCase(moviePersistence).execute(new DeleteRequest(req.body))
  }, res)
})

router.patch('/:id/v1', passport.authenticate('jwt', { session: false }), async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    req.body.id = req.params.id
    await new UpdateUseCase(moviePersistence).execute(new UpdateRequest(req.body))
  }, res)
})

router.post('/v1', passport.authenticate('jwt', { session: false }), async (req: Request, res: Response) => {
  await RequestService.wrapper(async () => {
    await new CreateUseCase(moviePersistence).execute(new CreateRequest(req.body))
  }, res)
})

export const movieRouter = router