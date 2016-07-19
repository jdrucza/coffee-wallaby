{ Meteor } = require 'meteor/meteor'
{ Template } = require 'meteor/templating'

require './nav.tpl.jade'

#Template.nav.onCreated ->

Template.nav.onRendered ->
  @.$('.button-collapse').sideNav()

Template.nav.helpers
