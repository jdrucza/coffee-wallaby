{ Meteor } = require 'meteor/meteor'
{ Accounts } = require 'meteor/accounts-base'
faker = require 'faker'

module.exports.regularUser = ->
  userEmail = faker.internet.email()
  userId = Accounts.createUser(email: userEmail, password: 'password')
  Meteor.users.findOne(userId)
