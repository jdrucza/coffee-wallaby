{ Meteor } = require 'meteor/meteor'
{ Template } = require 'meteor/templating'

helpers =
  superAdmin: -> Meteor.user()?.isSuperAdmin()

for own name, fn of helpers
  Template.registerHelper name, fn
