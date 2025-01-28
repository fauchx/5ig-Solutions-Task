import {Router} from 'express'
import {getOrders} from '../controller/order.controller.js'

const router = Router()

router.get("/orders", getOrders)

export default router