// Persistences
import { IMoviePersistence } from '../core/movie/IMoviePersistence'
import { MySQLMoviePersistence } from '../persistence/mysql/MySQLMoviePersistence'

// Services
import { IHttpService } from '../external/http/IHttpService'
import { AxiosHttpService } from '../external/http/AxiosHttpService'
import { IMovieExternalService } from '../external/movie/IMovieExternalService'
import { OMDBMovieExternalService } from '../external/movie/OMDBMovieExternalService'

// Persistences
export const moviePersistence = ((): IMoviePersistence => new MySQLMoviePersistence())()

// Services
export const httpService = ((): IHttpService => new AxiosHttpService())()
export const movieExternalService = ((): IMovieExternalService => new OMDBMovieExternalService())()
