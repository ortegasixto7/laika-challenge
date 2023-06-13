import { Sequelize, DataTypes, ModelStatic, Model } from 'sequelize';
import { Movie } from '../../core/movie/Movie';
import { Auth } from '../../external/auth/Auth';


export class MySQLConnection {
  sequelize: Sequelize;
  movieTable: ModelStatic<Model<Movie>>;
  authTable: ModelStatic<Model<Auth>>;

  constructor() {
    this.sequelize = new Sequelize(`mysql://${process.env.DB_USER}:${process.env.DB_PASS}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`, { logging: false })
    this.movieTable = this.sequelize.define('movies', {
      id: { type: DataTypes.STRING, primaryKey: true },
      title: { type: DataTypes.STRING },
      year: { type: DataTypes.INTEGER },
      rating: { type: DataTypes.FLOAT },
      rated: { type: DataTypes.STRING },
      releasedDate: { type: DataTypes.STRING, field: 'released_date' },
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

    this.authTable = this.sequelize.define('auth', {
      id: { type: DataTypes.STRING, primaryKey: true },
      email: { type: DataTypes.STRING },
      password: { type: DataTypes.STRING },
    }, {
      freezeTableName: true,
      timestamps: false
    })
  }

  public async authenticate(): Promise<void> {
    return this.sequelize.authenticate();
  }
}
