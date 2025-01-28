import express from 'express'
import cors from 'cors'
import orderRoutes from "./routes/orders.routes.js"

const app = express()
app.listen(8000, ()=>{
    console.log("Server in 8000")
})
app.use(cors())
app.use(express.json())
app.use(orderRoutes)
