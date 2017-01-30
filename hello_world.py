import bottle
import pymongo



@bottle.route('/')
def home_page():
	return bottle.template('welcome.tpl', )

@bottle.post('/movieByTitle')	
def movie_by_title():
	
	connection = pymongo.MongoClient('localhost', 27017)
	db = connection.video
	movieDetails = db.movieDetails
	
	userTitle = bottle.request.forms.get("cim")
	
	item = movieDetails.find({'title':{'$regex':userTitle}}, {'title':1, '_id':0})
	
	return bottle.template('hello_movie', word=userTitle, details=item)
	
  

@bottle.post('/movieByActor')	
def movie_by_actor():
	
	connection = pymongo.MongoClient('localhost', 27017)
	db = connection.video
	movieDetails = db.movieDetails
	
	userActor = bottle.request.forms.get("szinesz")
	
	item = movieDetails.find({'actors':{'$regex':userActor}}, {'title':1, 'year':1, '_id':0})
	
	return bottle.template('hello_movie', word=userActor, details=item)

@bottle.post('/movieByDirector')	
def movie_by_director():
	
	connection = pymongo.MongoClient('localhost', 27017)
	db = connection.video
	movieDetails = db.movieDetails
	
	userDirector = bottle.request.forms.get("rendezo")
	
	item = movieDetails.find({'director':{'$regex':userDirector}}, {'title':1, 'year':1, '_id':0})
	
	return bottle.template('hello_movie', word=userDirector, details=item)

@bottle.post('/result')
def query_result():
	
	connection = pymongo.MongoClient('localhost', 27017)
	db = connection.video
	movieDetails = db.movieDetails
	
	userTitle = bottle.request.forms.get("filmcim")
	
	item = movieDetails.find_one({'title':userTitle})
	
	return bottle.template('result', word=userTitle, movie=item)
	

bottle.debug(True)
bottle.run(host='localhost', port=8080)
