const eventsModel = require('../models/events')

class EventsController{
    static async addEvents(req, res){
        const {name, description, begin, time, statut} = req.body;
        try{
            const events =  await eventsModel.addEvents(name, description, begin, time, statut);
            res.status(200).json({message: 'événments enregistré avec succès', events})
            res.status(200).send('/cesi-bde/events')

        }catch (error){
            console.error("Erreur lors de l\'enregistrement de l\'événements: ", error)
            res.status(500).json({message: 'Erreur lors de l\'enregistrement de l\'événement'});
        }

    }

    static async listEvents(req, res){
        try{
            const [rows] =  await eventsModel.listEvents()
            res.render('events', {events: rows})
        }catch (error){
            console.error('Erreur lors de la récupération des données : ', error);
            res.status(500).json({ message: "Erreur lors de la récupération des données" });
        }
    }

    static  async valideEvents(req, res){
        try{
            const result =  await eventsModel.validateEvents()
            res.status(200).alert("événements valider avec succès", result)
        }catch (error){
            console.error("Erreur lors de la mise à jour du statut: ", error)
            res.status(500).json({message: "Erreur lors de la mise à jour du statut"})
        }
    }

    static async deleteEvents(req, res) {
        const {id} = req.body;
        try {
            const result = await eventsModel.deleteEvents(id);
            res.status(200).json(result);
        } catch (error) {
            console.error("Erreur lors de la suppression des données :", error);
            res.status(500).json({ message: 'Erreur lors de la suppression des données' });
        }
    }

    static  async renderIdeas(req, res){
        res.status(200).render('Ideas')
    }
}

module.exports = EventsController;