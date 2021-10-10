import 'package:flutter/material.dart';
import 'package:moviefind/main/movie_data.dart';
import 'package:moviefind/misc/loading.dart';
import 'package:moviefind/models/data.dart';
import 'package:moviefind/values/strings.dart';
import 'package:moviefind/values/colors.dart';
import 'package:moviefind/values/styles.dart';
import 'package:moviefind/misc/credits.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    final Size deviceParameters = MediaQuery.of(context).size;

    final data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.textAppName,
          style: Styles.textStylePageTitle,
        ),
        centerTitle: true,
        backgroundColor: AppColors.colorBackgroundAppBar,
      ),
      body: Container(
        height: deviceParameters.height,
        width: deviceParameters.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: FutureBuilder(
          future: MovieData.getMovieData(data["movieQuery"]),
          builder: (BuildContext context,
              AsyncSnapshot<Map<String, dynamic>> snapshot) {
            if (snapshot.hasData) {
              return Data.dataHolder(snapshot.data!);
            } else {
              return LoadingEffect.loadingShimmer();
            }
          },
        ),
      ),
      bottomNavigationBar: Misc.bottomCredits(),
    );
  }
}
