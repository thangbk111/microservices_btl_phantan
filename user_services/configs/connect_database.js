const Sequelize = require('sequelize');
function connectDatabase() {
    //params: database_name, username, password
    //'user_services', 'root', 'root'
    return new Sequelize('user_services', 'root', 'root', {
        dialect: 'mysql',
        host: 'user_db',
        port: '3306',
        operatorsAliases: false
    });
}
module.exports = connectDatabase;