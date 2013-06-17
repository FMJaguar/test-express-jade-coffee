express = require 'express'
http = require 'http'
app = express()

ProcessManager = require('./ProcessManager')
pm = new ProcessManager

app.configure () ->
	app.set 'view engine', 'jade'
	app.set 'views', __dirname + '/views'

PORT = 3000
PORT_TEST = PORT + 1

app.get '/', (req,res) ->
	res.render 'index', { 'pm' : pm }

app.get '/add', (req,res) ->
  pm.add()
  res.render 'index', { 'pm' : pm }

app.get '/killall', (req,res) ->
  pm.killall
  res.render 'index', { 'pm' : pm }

server = http.createServer(app).listen PORT, ->
	console.log "listening on port 3000"