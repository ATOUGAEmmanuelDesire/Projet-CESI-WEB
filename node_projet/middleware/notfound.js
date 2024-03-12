const notFoudMiddleware = (req, res, next)=>{
    res.status(404).render('notfound', {url: req.originalUrl});
};

module .exports = notFoudMiddleware;