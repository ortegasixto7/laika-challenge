import express, { Response, Router } from 'express'
import dotenv from 'dotenv'
if (!process.env.NODE_ENV) {
  dotenv.config()
}

import { MySQLConnection } from './persistence/mysql/MySQLConnection'
new MySQLConnection().authenticate().catch((err) => console.error(err))

import { movieRouter } from './routes/movieRouter'
import { authRouter } from './routes/authRouter'

const app = express()
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

import { Strategy, ExtractJwt } from 'passport-jwt';
import passport from 'passport';
passport.use(
  new Strategy(
    {
      secretOrKey: process.env.JWT_SECRET,
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken()
    },
    async (token, done) => {
      try {
        return done(null, token.user);
      } catch (error) {
        done(error);
      }
    }
  )
);

app.use(function (req, _, next) {
  console.info(`REQUEST_BODY: ${JSON.stringify(req.body)}`)
  next()
})

const router = Router()

router.get('/', (_, res: Response) => {
  res.status(200).json({ msg: 'API is working' })
})

router.use('/api/movies', movieRouter)
router.use('/api/auth', authRouter)

app.use(router)

app.listen(process.env.PORT, () => {
  console.log(`-------\n App listening on port => ${process.env.PORT}\n-------`)
})