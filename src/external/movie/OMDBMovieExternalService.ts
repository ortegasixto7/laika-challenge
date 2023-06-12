import { IMovieExternalService } from "./IMovieExternalService";
import { httpService } from "../../infrastructure/DependencyInjector";
import { Movie } from "../../core/movie/Movie";

export class OMDBMovieExternalService implements IMovieExternalService {
  private readonly URL_BASE = `http://www.omdbapi.com/?apikey=${process.env.OMDB_API_KEY}`

  async getByTitle(title: string): Promise<Movie | null> {
    try {
      const url = `${this.URL_BASE}&t=${title}`
      const resultApi = await httpService.get(url)
      const result = new Movie()
      result.actors = resultApi.data.Actors?.split(', ')
      result.awards = resultApi.data.Awards?.split('. ')
      result.directors = resultApi.data.Director?.split(', ')
      result.duration = resultApi.data.Runtime
      result.genres = resultApi.data.Genre?.split(', ')
      result.languages = resultApi.data.Language?.split(', ')
      result.plot = resultApi.data.Plot
      result.poster = resultApi.data.Poster
      result.rated = resultApi.data.Rated
      result.rating = Number(resultApi.data.imdbRating)
      result.releasedDate = resultApi.data.Released
      result.title = resultApi.data.Title
      result.writers = resultApi.data.Writer?.split(', ')
      result.year = Number(resultApi.data.Year);
      (resultApi.data.Ratings as Array<any>).map((item: any) => {
        result.ratings.push({ source: item.Source, value: item.Value })
      })
      return result
    } catch (error) {
      console.warn('[OMDB_MOVIE_EXTERNAL_SERVICE_WARN]', error)
      return null
    }
  }
}