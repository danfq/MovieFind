import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:moviefind/misc/credits.dart';
import 'package:moviefind/models/input.dart';
import 'package:moviefind/values/colors.dart';
import 'package:moviefind/values/strings.dart';
import 'package:moviefind/values/styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Styles.borderedText(
                Strings.textSearchTitle, Colors.white, Colors.black, 72.0),
            Input.searchInput(context),
          ],
        )),
      ),
      bottomNavigationBar: Misc.bottomCredits(),
    );
  }
}
