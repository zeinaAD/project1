const express = require('express');
const app = express();
var connection=require('./database');
var bodyParser=require('body-parser');
const session = require('express-session');
var urlencoderParser=bodyParser.urlencoded({extended:false});

const signupController = require('./sign_up');
const loginController = require('./login');
app.post('/signup',urlencoderParser, signupController.handleSignup);
app.post('/login',urlencoderParser, loginController.handleLogin);

app.get('/', (req, res) => {
    res.send('Hello World!');
});


const port = 5000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});



