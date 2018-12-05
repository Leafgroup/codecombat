Language = require './language'

module.exports = class HTML extends Language
  name: 'HTML'
  id: 'html'
  parserID: 'html'

  constructor: ->
    super arguments...

  hasChangedASTs: (a, b) ->
    return a.replace(/\s/g) isnt b.replace(/\s/g)

  usesFunctionWrapping: -> false

  # TODO: think about what this stub should do, really.
  parse: (code, aether) ->
    return code

  replaceLoops: (rawCode) ->
    [rawCode, []]
