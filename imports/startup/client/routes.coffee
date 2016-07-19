{ FlowRouter } = require 'meteor/kadira:flow-router'
{ BlazeLayout } = require 'meteor/kadira:blaze-layout'

BlazeLayout.setRoot 'body'

# layouts
require '/imports/ui/layouts/uber.coffee'

# main components
require '/imports/ui/components/welcome.coffee'

uberRoute = (urlRegex, name, mainTemplate)->
  FlowRouter.route urlRegex,
    name: name
    action: ->
      console.log "Rendering #{name}"
      BlazeLayout.render 'uber', main: mainTemplate

uberRoute '/', 'App.home', 'welcome'
