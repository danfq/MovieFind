#MovieFind - Search Engine

#Requirements
import os
from flask import Flask, request
from flask_cors import CORS
from search_movie import search_results

#Load DotEnv
API_KEY = os.getenv('API_KEY')

#API Setup
app = Flask(__name__)
CORS(app)

#Get Data
@app.route('/movie', methods=['GET'])
def searchMovie():
        return search_results(request.args.get('title'))

if __name__=='__main__':
        app.run(port = 5000, debug = False)