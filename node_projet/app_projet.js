const express =  require('express')
const router = require('./routes/router')
const app = express();
const session = require('express-session')
const userRoutes =  require('./routes/users')
const userController = require('./controller/aunthentificationController')

app.set('view engine', 'ejs');
app.set('views', 'frontTest');

app.use(session({
    secret: 'secret',
    resave: false,
    saveUninitialized: false
}))
app.use('/auth', userRoutes, userController.verifyToken);
app.use(express.urlencoded({extended: true}));
app.use(express.json());
app.use(express.static('public'));
app.use('/', router, userController.verifyToken);

app.listen(3000, ()=>{
    console.log('Serveur démarré sur le port 3000');
});