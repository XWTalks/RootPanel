path = require 'path'

i18n = require './i18n'
config = require './config'

exports.loadPlugins = ->
  for name in config.plugin.availablePlugin
    i18n.loadPlugin path.join(__dirname, "../plugin/#{name}/locale"), name
