import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/movie.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => EasySplashScreen(
                  logo: Image.asset(
                    "images/logo.png",
                  ),
                  navigator: Home(),
                  backgroundColor: Colors.white,
                  durationInSeconds: 4,
                ),
            '/movie': (context) => Movie(),
          },
        ));
  }
}
