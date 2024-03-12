const express =  require('express')
const router = require('./controller/router')
const bodyParser = require('body-parser')

const app = express();

app.set('view engine', 'ejs');
app.set('views', 'frontTest');

app.use(bodyParser.urlencoded({extended: true}))
app.use(express.static('public'));
app.use('/', router);

app.listen(3000, ()=>{
    console.log('Serveur démarré sur le port 3000');
});