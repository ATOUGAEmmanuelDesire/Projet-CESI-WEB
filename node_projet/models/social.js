const db = require('../utils/dbconnector')

class SocialModel{
    static async publish(name, url, description, category){
        try{
            const params = [name, url, description, category]
            const params2 = params.map(value => (typeof  value!== 'undefined' ? value: null))
            return await db.execute("CALL ADDImage(?,?,?,?)", params2)
        }catch (error){
            throw error;
        }
    }

    static async like(id_user, id_img){
        try{
            const params = [id_user, id_img]
            const params2 = params.map(value =>(typeof  value !== 'undefined' ? value : null))
            const [result] =  await db.execute("CALL ADDLikeImage(?,?)", params2)
            return result
        }catch (error){
            throw error;
        }
    }

    static async comment(img_id, user_id, email, comment) {
        try{
            const params =  [img_id, user_id, email, comment]
            const params2 = params.map(value =>(typeof  value !== 'undefined' ? value: null))
            const [result] = await db.execute("CALL AddImageComment(?,?,?)", params2)
            return result
        }catch (error){
            throw error;
        }
    }

    static async delete(id){
        try{
            return await db.execute("CALL DeleteImage(?)", id)
        }catch (error){
            throw error;
        }
    }

    static async show(){
        try{
            const[row] = await db.execute("CALL GetImages")
            return row
        }catch (error){
            throw error
        }
    }

    static async show_comment(){
        try{
            const[row] = await db.execute("CALL GetImageComments")
            return row
        }catch (error){
            throw error
        }
    }

    static async count_like(){
        try{
            return await db.execute("CALL GetImageLikeCount")
        }catch (error){
            throw error
        }
    }
}

module.exports = SocialModel;