# This is a simple test file to eliminate incorrect test setup as source of failure

#userTestHelper = require '/imports/userTestHelper.coffee' # this does NOT work with wallaby
#userTestHelper = require '/imports/userTestHelper' # this does NOT work with wallaby
#userTestHelper = require 'userTestHelper.coffee' # this does NOT work with wallaby

#userTestHelper = require 'userTestHelper' # this DOES work with wallaby
#userTestHelper = require './userTestHelper' # this DOES work with wallaby
#userTestHelper = require '../imports/userTestHelper' # this DOES work with wallaby

{ Meteor } = require 'meteor/meteor'
{ expect } = require 'meteor/practicalmeteor:chai'

describe "something true", ->
  it 'should be true', ->
    something = true
    expect(something).to.equal(true)

describe 'something non-existent', ->
  it 'should not exist', ->
    nonExistent = null # without declaring this the following will fail... why?
    expect(nonExistent).to.not.exist
    nonExistent2 = undefined
    expect(nonExistent2).to.not.exist