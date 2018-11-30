const Sequelize = require('sequelize');
const User = require('./user');
const connectDB = require('../configs/connect_database');
const sequelize = connectDB();

var Role = sequelize.define('roles', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    role: {
        type: Sequelize.INTEGER,
        allowNull: false
    }
}, {
    underscored: true
});
Role.belongsTo(User);

// create all the defined tables in the specified database.
sequelize.sync();

// export User model for use in other files.
module.exports = Role;