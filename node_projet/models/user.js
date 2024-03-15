const db = require('../utils/dbconnector')

class UserModel {
    static async authenticate(email, password){
        const[row] = await db.execute('SELECT * FROM users WHERE  email = ? LIMIT 1', [email])
        if(row.length>0){
            const user = row[0];
            if(user.password === password){
                return user;
            }
        }
        return null;
    }
    static async register(name, surname, email, password, localisation, status){
        try{
            const[result] = await db.execute('INSERT INTO Users (name, surname, email, password, localisation, status) VALUES (?,?,?,?,?,?)', [name, surname, email, password, localisation, status])
            return result.insertId;
        }catch (error){
            throw error;
        }
    }
}

module.exports = UserModel;