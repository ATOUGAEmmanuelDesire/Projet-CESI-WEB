const db = require('../utils/dbconnector')

class EventsModel {
    static async addEvents(name, description, begin, time, statut) {
        try {
            const params = [name, description, begin, time, statut]
            const params2 = params.map(value => (typeof value !== 'undefined' ? value : null))
            const [result] = await db.execute('CALL AddEvents(?,?,?,?,?)', params2)
            return result
        } catch (error) {
            throw error;
        }
    }


    static async listEvents(){
        try{
            const[row] = await db.execute('CALL GetEvents()')
            return row
        }catch (error){
            throw error;
        }
    }

    static async validateEvents(id){
        try{
            return db.execute('CALL UpadateEventStatut1(?)', [id])
        }catch (error){
            throw error;
        }
    }

    static async deleteEvents(id){
        try{
            db.execute("CALL DeleteEvents(?)", [id])
        }catch (error){
            throw error;
        }
    }
}

module.exports =  EventsModel;