const productModel = require('../models/product')

class productController{


    static async Product(req, res, next){
        const {name, price, description, url, category} = req.body;
        try{
            const product = await productModel.addproduct(name,price, description, price, category, url)
            res.status(201).json({message: 'Produit enregistré avec succèss', product})

        }catch (error){
            console.error('Erreur lors de l\'enregistrement du produit: ', error)
            res.status(500).json({ message: 'Erreur lors de l\'enregistrement du produit:' });
        }

    }

    static async eraseProduct(req, res, next){
        const{id} = req.body
        try{
            const move = await productModel.deleteproduct(id)
            res.status(201).json({message: "produit supprimer avec succès", move})
        }catch (error){
            res.status(500).json({message: "suppression ratée"})
        }
    }

    static async updateProduct(req, res, next){
        const{name, price, description, url, category} = req.body
        try {
            const update = await productModel.updateproduct(name, price, description, url, category)
            res.status(201).json({message: "modification réussie", update})
        }catch (error){
            res.status(500).json({message: "modification ratée"})
        }

    }
}

module.exports =  productController;