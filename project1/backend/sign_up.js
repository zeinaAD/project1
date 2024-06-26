var bodyParser=require('body-parser');
var urlencoderParser=bodyParser.urlencoded({extended:false});
var connection=require('./database');

const User = require('./models/user');

async function handleSignup(req, res) {
    console.log('********* Request body:', req.body);
    const { username, email, password } = req.body;
  
    try {
      // Create a new student document
      const user = new User({
        username,
        email,
        password
      });
  
      // Save the student document to the database
      await user.save();
  
      res.status(200).send('Signup successful');
    } catch (error) {
      console.error('Error inserting data into the database:', error.message);
      res.status(500).send('Error inserting data into the database: ' + error.message);
    }
  }
  
  module.exports = { handleSignup };