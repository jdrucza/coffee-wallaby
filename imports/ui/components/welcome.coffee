{ Template } = require 'meteor/templating'

require './welcome.tpl.jade'

Template.welcome.onRendered ->
  # any setup code e.g. for UI library features

Template.welcome.events
  'click h1': (e)-> alert('Placeholder demonstration event')