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
    static async register(name, surname, email, password, status, localisation){
        try{
            const params = [name, surname, email, password, status, localisation]
            const sanitizedParams = params.map(value => (typeof value !== 'undefined' ? value : "importe"));
            const[result] = await db.execute('INSERT INTO Users (Name, Surname, Email_address, Password, Statut, Localisation) VALUES (?,?,?,?,?,?)', sanitizedParams)
            //const[result] = await db.execute('CALL AddUser(?,?,?,?,?,?)', sanitizedParams)
            return result.insertId;
        }catch (error){
            throw error;
        }
    }
}

module.exports = UserModel;
