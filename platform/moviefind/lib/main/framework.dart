import 'package:flutter/material.dart';
import 'package:moviefind/values/styles.dart';

class Framework {
  ///Searches the Database for the specified [movieNameQuery].
  static void searchMovie(BuildContext context, String movieNameQuery) {
    showSnackbar(context, "Searching for '$movieNameQuery'...");
    movieResults(context);
  }

  ///Displays a Snackbar with a custom [message].
  static void showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: Styles.textSnackbar,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void movieResults(BuildContext context) {

    

    Navigator.pushNamed(context, '/movie');

  }

}
