import { MovieRating } from "../../Movie"

export class DetailResponse {
  id: string = ''
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