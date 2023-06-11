import { Sequelize, DataTypes, ModelStatic, Model } from 'sequelize';
import { Movie } from '../../core/movie/Movie';


export class MySQLConnection {
  sequelize: Sequelize;
  movieTable: ModelStatic<Model<Movie>>;

  constructor() {
    this.sequelize = new Sequelize(`mysql://${process.env.DB_USER}:${process.env.DB_PASS}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`)
    this.movieTable = this.sequelize.define('movies', {
      id: { type: DataTypes.STRING, primaryKey: true },
      title: { type: DataTypes.STRING },
      year: { type: DataTypes.INTEGER },
      rated: { type: DataTypes.STRING },
      releasedDate: { type: DataTypes.DATE, field: 'released_date' },
      duration: { type: DataTypes.STRING },
      genres: { type: DataTypes.JSON },
      directors: { type: DataTypes.JSON },
      writers: { type: DataTypes.JSON },
      actors: { type: DataTypes.JSON },
      languages: { type: DataTypes.JSON },
      awards: { type: DataTypes.JSON },
      plot: { type: DataTypes.TEXT },
      poster: { type: DataTypes.STRING },
      ratings: { type: DataTypes.JSON }
    }, {
      freezeTableName: true,
      timestamps: false
    })
  }

  public async authenticate(): Promise<void> {
    return this.sequelize.authenticate();
  }
}
