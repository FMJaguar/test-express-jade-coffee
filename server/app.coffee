express = require('express')
http = require('http')
app = express()

app.configure () ->
	app.set 'view engine', 'jade'
	app.set 'views', __dirname + '/views'

PORT = 3000
PORT_TEST = PORT + 1

app.get '/', (req,res) ->
	res.render 'index'

server = http.createServer(app).listen PORT, ->
	console.log "listening on port 3000"