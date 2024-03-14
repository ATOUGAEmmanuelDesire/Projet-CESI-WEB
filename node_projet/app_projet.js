const express =  require('express')
const router = require('./routes/router')
const app = express();

app.set('view engine', 'ejs');
app.set('views', 'frontTest');

app.use(express.urlencoded({extended: true}));
app.use(express.static('public'));
app.use('/', router);

app.listen(3000, ()=>{
    console.log('Serveur démarré sur le port 3000');
});