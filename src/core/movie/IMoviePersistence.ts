import { Movie } from './Movie'
export interface IMoviePersistence {
  getAll(offset: number, limit: number): Promise<Movie[]>
  getByTitleOrNull(title: string): Promise<Movie | null>
  getByIdOrException(id: string): Promise<Movie>
  delete(id: string): Promise<void>
  update(data: Movie): Promise<void>
  create(data: Movie): Promise<void>
}