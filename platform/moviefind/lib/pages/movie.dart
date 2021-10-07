import 'package:flutter/material.dart';
import 'package:moviefind/values/strings.dart';
import 'package:moviefind/values/colors.dart';
import 'package:moviefind/values/styles.dart';
import 'package:moviefind/misc/credits.dart';

class Movie extends StatefulWidget {
  const Movie({ Key? key }) : super(key: key);

  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {

    final Size deviceParameters = MediaQuery.of(context).size;

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
        child: Center(child: Text("Movie Data"),),
      ),
      bottomNavigationBar: Misc.bottomCredits(),
    );
  }
}