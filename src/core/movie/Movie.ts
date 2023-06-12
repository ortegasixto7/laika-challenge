import crypto from 'crypto'
export class Movie {
  id: string = crypto.randomUUID()
  title: string = ''
  year: number = 0
  rated: string = ''
  releasedDate: string = ''
  duration: string = ''
  plot: string = ''
  poster: string = ''
  rating: number = 0
  genres: string[] = []
  directors: string[] = []
  writers: string[] = []
  actors: string[] = []
  languages: string[] = []
  awards: string[] = []
  ratings: MovieRating[] = []
}

export class MovieRating {
  source: string = ''
  value: string = ''
}