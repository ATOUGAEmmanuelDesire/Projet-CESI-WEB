const db = require('../utils/dbconnector')

class productModel{

    static async addproduct(name, price, description, url, category){
        try{
            const[rows] = await db.execute('CALL addProduct(?,?,?,?)', [name, description, price, category, url])
            return rows
        }catch (err){
            throw err;
        }
    }

    static  async deleteproduct(id){
        try{
            return await db.execute('CALL RemoveGoody(?)', [id])
        }catch (error){
            throw error;
        }
    }

    static  async updateproduct(name, price, description, url, category){
        try{
            const[result] = await db.execute('CALL UpdateGoody(?,?,?,?)', [name, description, price, category, url])
            return result
        }catch (error){
            throw error;
        }
    }
}
module.exports = productModel;