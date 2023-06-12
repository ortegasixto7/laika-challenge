import { IUseCaseQuery } from '../../../../infrastructure/IUseCase'
import { GetPaginatedRequest } from './GetPaginatedRequest'
import { GetPaginatedResponse } from './GetPaginatedResponse'
import { IMoviePersistence } from '../../IMoviePersistence'

export class GetPaginatedUseCase implements IUseCaseQuery<GetPaginatedRequest, GetPaginatedResponse[]>{
  constructor(private moviePersistence: IMoviePersistence) { }

  async execute(request: GetPaginatedRequest): Promise<GetPaginatedResponse[]> {
    const page = request.page ?? 1
    const limit = Number(process.env.PAGINATION_LIMIT) ?? 5
    const offset = (page - 1) * limit
    const data = await this.moviePersistence.getPaginated(offset, limit)
    const result: GetPaginatedResponse[] = []
    data.map(item => {
      result.push({ id: item.id, poster: item.poster, rating: item.rating, title: item.title })
    })
    return result
  }
}