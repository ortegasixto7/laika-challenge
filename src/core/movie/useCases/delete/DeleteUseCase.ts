import { ExceptionCodeEnum } from '../../../../infrastructure/exception/ExceptionCodeEnum'
import { BadRequestException } from '../../../../infrastructure/exception/BadRequestException'
import { IUseCaseCommand } from '../../../../infrastructure/IUseCase'
import { DeleteRequest } from './DeleteRequest'
import { IMoviePersistence } from '../../IMoviePersistence'

export class DeleteUseCase implements IUseCaseCommand<DeleteRequest>{
  constructor(private moviePersistence: IMoviePersistence) { }

  async execute(request: DeleteRequest): Promise<void> {
    if (!request.id) throw new BadRequestException(ExceptionCodeEnum.MOVIE_ID_IS_REQUIRED)
    const movie = await this.moviePersistence.getByIdOrException(request.id)
    await this.moviePersistence.delete(movie.id)
  }
}