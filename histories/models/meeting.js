const Sequelize = require('sequelize');
const User = require('./user');
const connectDB = require('../configs/connect_database');
const sequelize = connectDB();

var Meeting = sequelize.define('meetings', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    title: {
        type: Sequelize.STRING,
        allowNull: false
    }
}, {
    underscored: true
});

Meeting.belongsTo(User, {foreignKey: 'user_created_id'});
// create all the defined tables in the specified database.
sequelize.sync();

// export User model for use in other files.
module.exports = Meeting;