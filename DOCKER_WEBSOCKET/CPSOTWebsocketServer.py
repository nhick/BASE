from tornado.websocket import WebSocketHandler as WSHandler
from tornado.web import Application as WebApp
from tornado.httpserver import HTTPServer
from tornado.ioloop import IOLoop
import socket


#SOME GLOBAL VAR
clients = []

class CPSOTClient():
	def __init__ (self , client):
		self.client = client
		self.msgCnt = 0

	def updateCount(self):
		self.msgCnt += 1

	def getCount(self):
		return str(self.msgCnt)

#IMPLEMENT SIMPLE WEBSOCKET
class CPSOTHandler(WSHandler):

	def open(self):
		print 'new connection'
		client = CPSOTClient(self)
		clients.append(client)

	def on_message(self , message):
		print 'message received %s' , message
		for con in clients:
			if con.client != self:
				con.client.write_message(con.getCount()+'XX'+message)
				con.updateCount()

	def on_close(self):
		clients.remove(self)
		print 'connection closed...'

	def check_origin(self , origin):
		return True

#CREATE A URL ROUTE
app = WebApp([
		(r'/cpsot_websocket' , CPSOTHandler)
	])

#KICK OFF THE APP

if __name__ == "__main__":
	print 'STARTING CPSOT WEBSOCKET APP'
	httpServer = HTTPServer( app )
	httpServer.listen(8585)
	print 'STARTED CPSOT WEBSOCKET APP at %s' , socket.gethostbyname(socket.gethostname())
	IOLoop.instance().start()	