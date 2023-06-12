import { ExceptionCodeEnum } from '../../../../infrastructure/exception/ExceptionCodeEnum'
import { BadRequestException } from '../../../../infrastructure/exception/BadRequestException'
import { IUseCaseQuery } from '../../../../infrastructure/IUseCase'
import { DetailRequest } from './DetailRequest'
import { DetailResponse } from './DetailResponse'
import { IMoviePersistence } from '../../IMoviePersistence'
import { NotFoundException } from "../../../../infrastructure/exception/NotFoundException"
import { IMovieExternalService } from "../../../../external/movie/IMovieExternalService"
import { Movie } from "../../Movie"

export class DetailUseCase implements IUseCaseQuery<DetailRequest, DetailResponse>{
  constructor(private moviePersistence: IMoviePersistence, private movieExternalService: IMovieExternalService) { }

  async execute(request: DetailRequest): Promise<DetailResponse> {
    if (!request.title) throw new BadRequestException(ExceptionCodeEnum.TITLE_IS_REQUIRED)
    let movie: Movie | null = null
    movie = await this.moviePersistence.getByTitleOrNull(request.title)
    movie = await this.movieExternalService.getByTitle(request.title)
    if (!movie) throw new NotFoundException(ExceptionCodeEnum.MOVIE_NOT_FOUND)
    const result = new DetailResponse()
    result.actors = movie.actors
    result.awards = movie.awards
    result.directors = movie.directors
    result.duration = movie.duration
    result.genres = movie.genres
    result.languages = movie.languages
    result.plot = movie.plot
    result.poster = movie.poster
    result.rated = movie.rated
    result.rating = movie.rating
    result.ratings = movie.ratings
    result.releasedDate = movie.releasedDate
    result.title = movie.title
    result.writers = movie.writers
    result.year = movie.year
    return result
  }
}