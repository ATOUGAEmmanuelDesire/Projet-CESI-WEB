const express =  require('express')
const router = require('./routes/router')
const app = express();
const path = require('path')
const session = require('express-session')
const userRoutes =  require('./routes/users')
const productRoutes = require('./routes/Product')
const eventsRoutes = require('./routes/events')
const userController = require('./controller/aunthentificationController')

app.set('view engine', 'ejs');
app.set('views', 'frontTest');

app.use(express.json());

// app.use(express.static(path.join(__dirname, "public")));
app.use(express.static("public"));
app.use(session({
    secret: 'secret',
    resave: false,
    saveUninitialized: false
}))
app.use('/cesi-bde/product', productRoutes)
app.use('/auth', userRoutes, userController.verifyToken);
app.use(express.urlencoded({extended: true}));
app.use(express.static('public'));
app.use('/cesi-bde/ev/', eventsRoutes)
app.use('/cesi-bde', router, userController.verifyToken);

app.listen(3000, ()=>{
    console.log('Serveur démarré sur le port 3000');
});