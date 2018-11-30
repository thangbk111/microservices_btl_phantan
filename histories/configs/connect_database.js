const Sequelize = require('sequelize');
function connectDatabase() {
    //params: database_name, username, password
    return new Sequelize('history_services', 'root', 'root', {
        dialect: 'mysql',
        host: 'history_db',
        port: '3306',
        operatorsAliases: false
    });
}
module.exports = connectDatabase;