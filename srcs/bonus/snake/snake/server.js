const { response } = require('express');

let express = require('express')
let app = express()
app.use(express.static('public'))
app.set('view engine', 'ejs')

app.get('/', (request, response) => {
    response.render('public/index');
})

app.get('/snake', (request, response) => {
    response.render('public/index');
})

app.get('*', (request, response) => {
    response.render('public/index');
})

app.listen(4000);
