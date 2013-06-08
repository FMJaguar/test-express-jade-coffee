express = require('express')
http = require('http')
app = express()

PORT = 3000
PORT_TEST = PORT + 1

app.get '/', (req,res) ->
	res.send "Hey There"

server = http.createServer(app).listen PORT, ->
	console.log "listening on port 3000"
