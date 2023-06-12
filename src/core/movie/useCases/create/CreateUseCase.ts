import { IUseCaseCommand } from '../../../../infrastructure/IUseCase'
import { CreateRequest } from './CreateRequest'
import { IMoviePersistence } from '../../IMoviePersistence'
import { CreateRequestValidation } from './CreateRequestValidation'
import { Movie } from '../../Movie'

export class CreateUseCase implements IUseCaseCommand<CreateRequest>{
  constructor(private moviePersistence: IMoviePersistence) { }

  async execute(request: CreateRequest): Promise<void> {
    new CreateRequestValidation().validate(request)

    const movie = new Movie()
    movie.actors = request.actors
    movie.awards = request.awards
    movie.directors = request.directors
    movie.duration = request.duration
    movie.genres = request.genres
    movie.languages = request.languages
    movie.plot = request.plot
    movie.poster = request.poster
    movie.rated = request.rated
    movie.ratings = request.ratings
    movie.releasedDate = request.releasedDate
    movie.title = request.title
    movie.writers = request.writers
    movie.year = request.year
    movie.rating = request.rating
    await this.moviePersistence.create(movie)
  }
}