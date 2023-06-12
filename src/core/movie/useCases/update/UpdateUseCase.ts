import { IUseCaseCommand } from '../../../../infrastructure/IUseCase'
import { UpdateRequest } from './UpdateRequest'
import { IMoviePersistence } from '../../IMoviePersistence'
import { UpdateRequestValidation } from './UpdateRequestValidation'

export class UpdateUseCase implements IUseCaseCommand<UpdateRequest>{
  constructor(private moviePersistence: IMoviePersistence) { }

  async execute(request: UpdateRequest): Promise<void> {
    new UpdateRequestValidation().validate(request)

    const movie = await this.moviePersistence.getByIdOrException(request.id)
    if (request.actors) movie.actors = request.actors
    if (request.awards) movie.awards = request.awards
    if (request.directors) movie.directors = request.directors
    if (request.duration) movie.duration = request.duration
    if (request.genres) movie.genres = request.genres
    if (request.languages) movie.languages = request.languages
    if (request.plot) movie.plot = request.plot
    if (request.poster) movie.poster = request.poster
    if (request.rated) movie.rated = request.rated
    if (request.ratings) movie.ratings = request.ratings
    if (request.releasedDate) movie.releasedDate = request.releasedDate
    if (request.title) movie.title = request.title
    if (request.writers) movie.writers = request.writers
    if (request.year) movie.year = request.year

    await this.moviePersistence.update(movie)
  }
}