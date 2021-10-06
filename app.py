from flask import Flask, request, jsonify
from flask_cors import CORS
import os
import recommend
port = int(os.environ.get('PORT', 5000))

app = Flask(__name__)
CORS(app) 
        
@app.route('/movie', methods=['GET'])
def recommend_movies():
        res = recommend.results(request.args.get('title'))
        return jsonify(res)

if __name__=='__main__':
        app.run(port = port, debug = True)
