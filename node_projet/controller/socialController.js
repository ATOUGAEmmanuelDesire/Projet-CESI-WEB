const socialModel = require('../models/social')

class ModelController{

    static async publish(req, res){
        const {name,url, description, category} = req.body
        try{
            const request =  await socialModel.publish(name, url, description, category)
            res.status(200).json({message: "publication éffectuée"}, request)
        }catch (err){
            res.status(500).json({message: "envoie de donné réussi"})
            console.error("Erreur", err)
        }
    }

    static async like(req, res){
        const {id_user, id_img} = req.body
        try{
            await socialModel.like(id_user, id_img)
        }catch (err){
            res.status(500).json({message: "like rater"})
            console.error("Erreur", err)
        }
    }

    static async comment(req, res){
        const {img_id, user_id, email, comment} = req.body
        try{
            await socialModel.comment(img_id, user_id, email, comment)
        }catch (err){
            res.status(500).json({message: "echec du commentaire"})
            console.error("Erreur", err)
        }
    }

    static async delete(req, res){
        const id = req.body
        try{
            const request = await socialModel.delete(id)
            res.status(200).json({message: "supresion"}, request)
        }catch (err){
            res.status(500).json({message: "Erreur lors de la suppression"})
            console.error("Erreur", err)
        }
    }

    static async show(req, res){
        try{
            const [tab] = await socialModel.show()
            res.status(200).render('social', {post: tab})
        }catch (err){
            res.status(500).json({message: "Erreur"})
            console.error("Erreur", err)
        }
    }

    static async show_comment(req, res){
        try{
            const [tab1] = await socialModel.show_comment()
            res.status(200).render('social', {post: tab1})
        }catch (err){
            res.status(500).json({message: "Erreur"})
            console.error("Erreur", err)
        }
    }

    static async count_like(req, res){
        try{
            const [tab] = socialModel.count_like()
            res.status(200).render('social', {post: tab})
        }catch (err){
            res.status(500).json({message: "Erreur"})
            console.error("Erreur", err)
        }
    }
}

module.exports = ModelController;


