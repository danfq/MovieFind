import 'dart:convert';
import 'package:http/http.dart';

class MovieData {
  static Future<Map<String, dynamic>> getMovieData(String movieQuery) async {
    String url = "https://moviefindapi.herokuapp.com/movie?title=$movieQuery";

    var response = await get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      Map<String, dynamic> movieData = json.decode(response.body);

      return movieData;
    } else {
      throw Exception('Failed to fetch Movie Data.');
    }
  }
}
