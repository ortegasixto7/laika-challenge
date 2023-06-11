import express, { Response, Router } from 'express'
import dotenv from 'dotenv'
if (!process.env.NODE_ENV) {
  dotenv.config()
}

// import { userRouter } from './routes/userRouter'

const app = express()
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

app.use(function (req, _, next) {
  console.info(`REQUEST_BODY: ${JSON.stringify(req.body)}`)
  next()
})

const router = Router()

router.get('/', (_, res: Response) => {
  res.status(200).json({ msg: 'API is working' })
})

// router.use('/api/users', userRouter)

app.use(router)

app.listen(process.env.PORT, () => {
  console.log(`-------\n App listening on port => ${process.env.PORT}\n-------`)
})