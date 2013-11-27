path = require 'path'

module.exports =
  configDefaults:
    showOnStartup: true

  activate: ->
    @show() if atom.config.get('welcome.showOnStartup')
    atom.config.set('welcome.showOnStartup', false)

  show: ->
    atom.workspaceView.open path.join(__dirname, 'welcome.md')
