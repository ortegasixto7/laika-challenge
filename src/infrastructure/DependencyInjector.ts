// Persistences
import { IMoviePersistence } from '../core/movie/IMoviePersistence'
import { MySQLMoviePersistence } from '../persistence/mysql/MySQLMoviePersistence'
import { IAuthPersistence } from '../external/auth/IAuthPersistence'
import { MySQLAuthPersistence } from '../persistence/mysql/MySQLAuthPersistence'

// Services
import { IHttpService } from '../external/http/IHttpService'
import { AxiosHttpService } from '../external/http/AxiosHttpService'
import { IMovieExternalService } from '../external/movie/IMovieExternalService'
import { OMDBMovieExternalService } from '../external/movie/OMDBMovieExternalService'
import { ICacheService } from '../external/cache/ICacheService'
import { NodeCacheService } from '../external/cache/NodeCacheService'
import { IHashService } from '../external/hash/IHashService'
import { BcryptHashService } from '../external/hash/BcryptHashService'

// Persistences
export const moviePersistence = ((): IMoviePersistence => new MySQLMoviePersistence())()
export const authPersistence = ((): IAuthPersistence => new MySQLAuthPersistence())()

// Services
export const httpService = ((): IHttpService => new AxiosHttpService())()
export const movieExternalService = ((): IMovieExternalService => new OMDBMovieExternalService())()
export const cacheService = ((): ICacheService => NodeCacheService.getInstance())()
export const hashService = ((): IHashService => new BcryptHashService())()
