import { MovieRating } from '../../Movie'
export class CreateRequest {
  title: string = ''
  year: number = 0
  rated: string = ''
  releasedDate: string = ''
  duration: string = ''
  plot: string = ''
  poster: string = ''
  genres: string[] = []
  directors: string[] = []
  writers: string[] = []
  actors: string[] = []
  languages: string[] = []
  awards: string[] = []
  ratings: MovieRating[] = []

  constructor(request: any) {
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