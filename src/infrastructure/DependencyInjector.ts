// Persistences
import { IMoviePersistence } from '../core/movie/IMoviePersistence'
import { MySQLMoviePersistence } from '../persistence/mysql/MySQLMoviePersistence'

// Services
import { IHttpService } from '../external/http/IHttpService'
import { AxiosHttpService } from '../external/http/AxiosHttpService'
import { IMovieExternalService } from '../external/movie/IMovieExternalService'
import { OMDBMovieExternalService } from '../external/movie/OMDBMovieExternalService'
import { ICacheService } from '../external/cache/ICacheService'
import { NodeCacheService } from '../external/cache/NodeCacheService'

// Persistences
export const moviePersistence = ((): IMoviePersistence => new MySQLMoviePersistence())()

// Services
export const httpService = ((): IHttpService => new AxiosHttpService())()
export const movieExternalService = ((): IMovieExternalService => new OMDBMovieExternalService())()
export const cacheService = ((): ICacheService => NodeCacheService.getInstance())()
