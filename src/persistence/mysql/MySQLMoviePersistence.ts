import { BadRequestException } from "../../infrastructure/exception/BadRequestException"
import { ExceptionCodeEnum } from "../../infrastructure/exception/ExceptionCodeEnum"
import { MySQLConnection } from "./MySQLConnection";
import { IMoviePersistence } from '../../core/movie/IMoviePersistence'
import { Movie } from "../../core/movie/Movie";

export class MySQLMoviePersistence extends MySQLConnection implements IMoviePersistence {

  constructor() {
    super()
  }

  async getAll(): Promise<Movie[]> {
    const result = await this.movieTable.findAll()
    return []
  }

  async getByTitleOrNull(title: string): Promise<Movie | null> {
    const result = await this.movieTable.findOne({ where: { title } })
    if (!result) return null
    return result.toJSON()
  }

  async getByIdOrException(id: string): Promise<Movie> {
    const result = await this.movieTable.findByPk(id)
    if (!result) throw new BadRequestException(ExceptionCodeEnum.MOVIE_NOT_FOUND)
    return result.toJSON()
  }

  async delete(id: string): Promise<void> {
    await this.movieTable.destroy({ where: { id } })
  }

  async update(data: Movie): Promise<void> {
    await this.movieTable.update(data, { where: { id: data.id } })
  }

  async create(data: Movie): Promise<void> {
    await this.movieTable.create(data)
  }
}

