
const express = require('express');
const app = express();
var connection=require('./database');
var bodyParser=require('body-parser');
const session = require('express-session');
var urlencoderParser=bodyParser.urlencoded({extended:false});

const signupController = require('./sign_up');
app.post('/signup',urlencoderParser, signupController.handleSignup);

app.get('/', (req, res) => {
    res.send('Hello World!');
});

const port = 5000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});



