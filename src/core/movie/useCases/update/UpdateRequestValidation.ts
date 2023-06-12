import { ExceptionCodeEnum } from '../../../../infrastructure/exception/ExceptionCodeEnum'
import { BadRequestException } from '../../../../infrastructure/exception/BadRequestException'
import { IRequestValidator } from '../../../../infrastructure/IRequestValidator'
import { UpdateRequest } from './UpdateRequest'

export class UpdateRequestValidation implements IRequestValidator<UpdateRequest> {
  validate(request: UpdateRequest): void {
    if (!request.id) throw new BadRequestException(ExceptionCodeEnum.MOVIE_ID_IS_REQUIRED)
    if (request.actors && request.actors.length === 0) throw new BadRequestException(ExceptionCodeEnum.ACTORS_IS_REQUIRED)
    if (request.awards && request.awards.length === 0) throw new BadRequestException(ExceptionCodeEnum.AWARDS_IS_REQUIRED)
    if (request.directors && request.directors.length === 0) throw new BadRequestException(ExceptionCodeEnum.DIRECTORS_IS_REQUIRED)
    if (request.genres && request.genres.length === 0) throw new BadRequestException(ExceptionCodeEnum.GENRES_IS_REQUIRED)
    if (request.languages && request.languages.length === 0) throw new BadRequestException(ExceptionCodeEnum.LANGUAGES_IS_REQUIRED)
    if (request.writers && request.writers.length === 0) throw new BadRequestException(ExceptionCodeEnum.WRITERS_IS_REQUIRED)
    if (request.ratings && request.ratings.length === 0) throw new BadRequestException(ExceptionCodeEnum.RATINGS_IS_REQUIRED)
    request.ratings?.map(item => {
      if (!item.source || !item.value) throw new BadRequestException(ExceptionCodeEnum.INVALID_RATINGS)
    })
  }
}