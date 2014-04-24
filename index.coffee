fs = require 'fs'
fs.readdirSync(__dirname+'/decks/standard/images').forEach (file) ->
	fs.renameSync(__dirname+'/decks/standard/images/'+file, __dirname+'/decks/standard/images/card-'+file)

