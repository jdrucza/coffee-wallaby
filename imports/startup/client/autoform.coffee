AutoForm.addHooks(null, {
  onError: (type, error)->
    # TODO: better notification system than 'alert'
    alert(error.reason) if type == 'method'
})