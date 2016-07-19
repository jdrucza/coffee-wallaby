{ Meteor } = require 'meteor/meteor'
{ Accounts } = require 'meteor/accounts-base'
{ Roles } = require 'meteor/alanning:roles'

require './registerApi.coffee'

Meteor.startup(() =>
# code to run on server at startup

  superAdminEmail = process.env.ADMIN_EMAIL or 'admin@test.com'
  superAdminPassword = process.env.ADMIN_PASSWORD or 'password'

  superAdmin = Accounts.findUserByEmail superAdminEmail
  if superAdmin?
    console.log "Found user with superAdmin email #{superAdminEmail}"
  else
    console.log "No existing superAdmin found."
    Accounts.createUser(email: superAdminEmail, password: superAdminPassword)
    console.log "Created user with superAdmin email #{superAdminEmail}"
    superAdmin = Accounts.findUserByEmail superAdminEmail

  unless Roles.userIsInRole(superAdmin._id, 'superAdmin')
    console.log "Making user with #{superAdminEmail} a superAdmin"
    Roles.addUsersToRoles(superAdmin._id, 'superAdmin', Roles.GLOBAL_GROUP)
)
