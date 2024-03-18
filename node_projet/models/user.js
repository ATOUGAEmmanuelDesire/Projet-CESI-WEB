const db = require('../utils/dbconnector')
const bcrypt = require('bcrypt')
class UserModel {
    static async authenticate(email, password) {
        const [row] = await db.execute(`SELECT * FROM users WHERE Email_address = ? LIMIT 1`, [email]);
        if (row.length > 0) {
            const user = row[0];
            const passwordMatch = await bcrypt.compare(password, user.Password);
            if (passwordMatch) {
                return user;
            }
        }
        return null;
    }

    static async register(name, surname, email, password, status, localisation) {
        try {
            const hashedPassword = await bcrypt.hash(password, 10); // 10 is the number of salt rounds
            const params = [name, surname, email, hashedPassword, status, localisation];
            const sanitizedParams = params.map(value => (typeof value !== 'undefined' ? value : "importe"));
            const [result] = await db.execute('CALL AddUser(?,?,?,?,?,?)', sanitizedParams);
            return result.insertId;
        } catch (error) {
            throw error;
        }
    }


}

module.exports = UserModel;
