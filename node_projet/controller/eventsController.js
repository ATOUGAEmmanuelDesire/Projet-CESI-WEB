const eventsModel = require('../models/events')

class EventsController{
    static async add(req, res){
        const {name, description, begin, time} = req.body;
        const statut = 0
        try{
            const events =  await eventsModel.addEvents(name, description, begin, time, statut);
            res.status(200).json({message: 'événments enregistré avec succès', events})

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
        const {id} = req.body;
        try{
            const result =  await eventsModel.validateEvents(id)
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

    static async renderPastEvents(req, res){
        try{
            const [result] =  await eventsModel.passEvents()
            res.status(200).render('PastsEvents', {pastevents: result})
        }catch (error){
            console.error(error)
        }
    }

    static async renderEventsI(req, res){
        try{
            const[result] = await eventsModel.eventsI()
            res.status(200).render('ideas', {events: result})
        }catch (error){
            console.log(error)
        }
    }

    static async renderAddIdea(req, res){
        res.status(200).render('Ideas_box_f')
    }
}

module.exports = EventsController;