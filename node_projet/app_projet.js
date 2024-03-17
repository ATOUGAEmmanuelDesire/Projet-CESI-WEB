const express =  require('express')
const router = require('./routes/router')
const app = express();
const userRoutes =  require('./routes/users')
const productRoutes = require('./routes/Product')
const eventsRoutes = require('./routes/events')
const socialRoutes = require('./routes/social')


app.set('view engine', 'ejs');
app.set('views', 'frontTest');

app.use(express.json());

// app.use(express.static(path.join(__dirname, "public")));
app.use(express.static("public"));
app.use('/cesi-bde/product', productRoutes)
app.use('/cesi-bde/so', socialRoutes)
app.use('/auth', userRoutes);
app.use(express.urlencoded({extended: true}));
app.use('/cesi-bde/ev', eventsRoutes)
app.use('/cesi-bde', router);

app.listen(3000, ()=>{
    console.log('Serveur démarré sur le port 3000');
});