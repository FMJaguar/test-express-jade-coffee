spawn = require('child_process').spawn
_ = require('underscore')

class ProcessManager
  constructor: () ->
    @clients = []

  add: () ->
    @clients.push spawn('tail -f /dev/null')

  killAll: () ->
    _.each @clients, (c) ->
      c.kill(SIGTERM) unless !c

module.exports = ProcessManager