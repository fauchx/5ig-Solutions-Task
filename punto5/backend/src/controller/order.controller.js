import {pool} from "../db.js"
export const getOrders = async (req, res)=>{
   try {
    const [results] = await pool.query("SELECT * FROM orders")
    res.json(results)
   } catch (error) {
    console.log(err)
    res.status(500).json({error:"Error fetching"})
   }
}