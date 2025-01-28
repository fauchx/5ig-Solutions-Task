import {createPool} from 'mysql2/promise'

export const pool = createPool({
    host:'localhost',
    user:'root',
    password:'fabian28',
    port:'3306',
    database: 'orders_db'
})

