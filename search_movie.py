#MovieFind - Movie Details

#Requirements
import urllib
import json

def get_specific_movie_data(movie_data, movie_name):

    if movie_data["results"][0]["title"] == movie_name.title():
        movie_data_specific = movie_data["results"][0]

        api_url = "https://api.themoviedb.org/3/movie/" + str(movie_data_specific["id"]) + "?api_key=6c166398646860781af041180e47d130"
        movie_data_all = json.loads(urllib.request.urlopen(api_url).read())

        api_url_credits = "https://api.themoviedb.org/3/movie/" + str(movie_data_specific["id"]) + "/credits?api_key=6c166398646860781af041180e47d130"
        movie_data_credits = json.loads(urllib.request.urlopen(api_url_credits).read())

        movie_data_with_credits = dict(list(movie_data_all.items()) + list(movie_data_credits.items()))

        return movie_data_with_credits
    else:
        return {"error": "The Movie you requested is not on the Database."}

#Get Data
def get_movie_by_name(movie_name):
    api_url = urllib.parse.quote('https://api.themoviedb.org/3/search/movie?api_key=6c166398646860781af041180e47d130&query=' + str(movie_name)).replace("%3A", ":").replace("%3F", "?").replace("%3D", "=").replace("%26", "&").replace("%27", "'")
    response = urllib.request.urlopen(api_url)
    movie_data_unspecified = json.loads(response.read())
    return get_specific_movie_data(movie_data_unspecified, movie_name)

def search_results(movie_name):
        movie_name = movie_name.lower()
        return get_movie_by_name(movie_name)