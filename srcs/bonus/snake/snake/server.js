const { response } = require('express');

let express = require('express')
let app = express()
app.use(express.static('public'))
app.set('view engine', 'ejs')

app.get('/', (request, response) => {
    response.render('public/index');
})
app.get('/style.css', (request, response) => {
    response.render('public/style.css');
})


app.listen(4000);
