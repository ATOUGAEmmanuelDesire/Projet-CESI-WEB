const express = require('express')
const app = express();

app.set('view engine', 'ejs')
app.set('views', 'frontTest')

app.use(express.static('public'));

app.get('/cesi-bde/accueil', (req, res, next)=>{
    res.status(200).render('accueil');
})

app.get('/cesi-bde/inscription', (req, res, next)=>{
    res.status(200).render('inscription')
})

app.get('/cesi-bde/connexion', (req, res, next)=>{
    res.status(200).render('connexion')
})

app.get('/cesi-bde/social', (req, res, next)=>{
    res.status(200).render('social')
})

app.get('/cesi-bde/boutique', (req, res, next)=>{
    res.status(200).render('boutique')
})

app.get('/cesi-bde/events', (req, res, next)=>{
    res.status(200).render('events')
})
app.use('/', (req, res)=>{
    res.status(404).render('notfound')
})


app.listen(3000);
