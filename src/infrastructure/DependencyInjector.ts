// Persistences
import { IMoviePersistence } from '../core/movie/IMoviePersistence'
import { MySQLMoviePersistence } from '../persistence/mysql/MySQLMoviePersistence'

// Services


// Persistences
export const moviePersistence = ((): IMoviePersistence => new MySQLMoviePersistence())()

// Services

