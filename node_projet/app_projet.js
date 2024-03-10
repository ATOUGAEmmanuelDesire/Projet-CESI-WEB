const express =  require('express')
const app = express();
const router = require('./controller/router')

app.set('view engine', 'ejs');
app.set('views', 'frontTest');

app.use(express.static('public'));
app.use('/', router);

app.listen(3000, ()=>{
    console.log('Serveur démarré sur le port 3000');
});