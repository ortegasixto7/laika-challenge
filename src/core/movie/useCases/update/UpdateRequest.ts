import { MovieRating } from '../../Movie'
export class UpdateRequest {
  id: string = ''
  title?: string = undefined
  year?: number = undefined
  rated?: string = undefined
  releasedDate?: string = undefined
  duration?: string = undefined
  plot?: string = undefined
  poster?: string = undefined
  genres?: string[] = undefined
  directors?: string[] = undefined
  writers?: string[] = undefined
  actors?: string[] = undefined
  languages?: string[] = undefined
  awards?: string[] = undefined
  ratings?: MovieRating[] = undefined

  constructor(request: any) {
    if (request.id) this.id = request.id
    if (request.title) this.title = request.title
    if (request.year) this.year = request.year
    if (request.rated) this.rated = request.rated
    if (request.releasedDate) this.releasedDate = request.releasedDate
    if (request.duration) this.duration = request.duration
    if (request.plot) this.plot = request.plot
    if (request.poster) this.poster = request.poster
    if (request.genres) this.genres = request.genres
    if (request.directors) this.directors = request.directors
    if (request.writers) this.writers = request.writers
    if (request.actors) this.actors = request.actors
    if (request.languages) this.languages = request.languages
    if (request.awards) this.awards = request.awards
    if (request.ratings) this.ratings = request.ratings
  }
}