import { Movie } from "../../core/movie/Movie";

export interface IMovieExternalService {
  getByTitle(title: string): Promise<Movie | null>
}