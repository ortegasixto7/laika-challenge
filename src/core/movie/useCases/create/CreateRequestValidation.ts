import { ExceptionCodeEnum } from '../../../../infrastructure/exception/ExceptionCodeEnum'
import { BadRequestException } from '../../../../infrastructure/exception/BadRequestException'
import { IRequestValidator } from '../../../../infrastructure/IRequestValidator'
import { CreateRequest } from './CreateRequest'

export class CreateRequestValidation implements IRequestValidator<CreateRequest> {
  validate(request: CreateRequest): void {
    if (request.actors.length === 0) throw new BadRequestException(ExceptionCodeEnum.ACTORS_IS_REQUIRED)
    if (request.awards.length === 0) throw new BadRequestException(ExceptionCodeEnum.AWARDS_IS_REQUIRED)
    if (request.directors.length === 0) throw new BadRequestException(ExceptionCodeEnum.DIRECTORS_IS_REQUIRED)
    if (!request.duration) throw new BadRequestException(ExceptionCodeEnum.DURATION_IS_REQUIRED)
    if (request.genres.length === 0) throw new BadRequestException(ExceptionCodeEnum.GENRES_IS_REQUIRED)
    if (request.languages.length === 0) throw new BadRequestException(ExceptionCodeEnum.LANGUAGES_IS_REQUIRED)
    if (!request.plot) throw new BadRequestException(ExceptionCodeEnum.PLOT_IS_REQUIRED)
    if (!request.poster) throw new BadRequestException(ExceptionCodeEnum.POSTER_IS_REQUIRED)
    if (!request.rated) throw new BadRequestException(ExceptionCodeEnum.RATED_IS_REQUIRED)
    if (!request.releasedDate) throw new BadRequestException(ExceptionCodeEnum.RELEASED_DATE_IS_REQUIRED)
    if (!request.title) throw new BadRequestException(ExceptionCodeEnum.TITLE_IS_REQUIRED)
    if (request.writers.length === 0) throw new BadRequestException(ExceptionCodeEnum.WRITERS_IS_REQUIRED)
    if (!request.year) throw new BadRequestException(ExceptionCodeEnum.YEAR_IS_REQUIRED)
    if (request.ratings.length === 0) throw new BadRequestException(ExceptionCodeEnum.RATINGS_IS_REQUIRED)
    request.ratings.map(item => {
      if (!item.source || !item.value) throw new BadRequestException(ExceptionCodeEnum.INVALID_RATINGS)
    })
  }
}