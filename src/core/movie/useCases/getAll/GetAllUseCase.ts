import { IUseCaseQuery } from '../../../../infrastructure/IUseCase'
import { GetAllRequest } from './GetAllRequest'
import { GetAllResponse } from './GetAllResponse'
import { IMoviePersistence } from '../../IMoviePersistence'

export class GetAllUseCase implements IUseCaseQuery<GetAllRequest, GetAllResponse[]>{
  constructor(private moviePersistence: IMoviePersistence) { }

  async execute(request: GetAllRequest): Promise<GetAllResponse[]> {
    const page = request.page ?? 1
    const limit = Number(process.env.PAGINATION_LIMIT) ?? 5
    const offset = (page - 1) * limit
    const data = await this.moviePersistence.getAll(offset, limit)
    const result: GetAllResponse[] = []
    data.map(item => {
      result.push({ id: item.id, poster: item.poster, rating: item.rating, title: item.title })
    })
    return result
  }
}