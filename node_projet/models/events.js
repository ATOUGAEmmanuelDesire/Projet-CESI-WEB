const db = require('../utils/dbconnector')

class EventsModel {
    static async addEvents(){
        const[row] = await db.execute('CALL AddEvents')
    }

    static async listEvents(){

    }
}