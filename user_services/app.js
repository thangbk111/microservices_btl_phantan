const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const morgan = require('morgan');
var users = require('./routes/users');
var roles = require('./routes/roles');
var isAuthenticated = require('./middleware/authenticate');
const app = express();

//Configs
app.set('port', 3000);

//Use Middleware
app.use(express.json());
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended: true }));

// Route
app.use('/api/users', users);
app.use('/api/invite_meeting', isAuthenticated, roles);

app.listen(app.get('port'), () => console.log(`Listening to port ${app.get('port')}`));