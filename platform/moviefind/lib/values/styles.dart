import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefind/values/colors.dart';

class Styles {
  //Text Styles
  static const TextStyle textStylePageTitle = TextStyle(
      color: AppColors.colorTextTitle,
      fontFamily: 'Montserrat_Semi_Bold',
      letterSpacing: 2.0);
  static const TextStyle textStyleSearchInput = TextStyle(
      color: Colors.grey, fontFamily: 'Montserrat_Regular', fontSize: 36.0);
  static const TextStyle textStyleCredits = TextStyle(
    color: Colors.black,
    fontSize: 22.0,
    fontFamily: 'Montserrat_Regular',
  );

  //Button Styles
  static const TextStyle textButtonSearch = TextStyle(
      color: Colors.white, fontSize: 26.0, fontFamily: 'Montserrat_Light');

  //Snackbar
  static const TextStyle textSnackbar = TextStyle(
      color: Colors.white, fontFamily: 'Montserrat_Light', fontSize: 26.0);

  //Bordered Text
  static Widget borderedText(
      String text, Color innerColor, Color outerColor, double fontSize) {
    return BorderedText(
      strokeWidth: 6.0,
      strokeColor: outerColor,
      child: Text(
        text,
        style: TextStyle(color: innerColor, fontSize: fontSize),
      ),
    );
  }

  static const textDataTitle = TextStyle(
      color: Colors.white, fontFamily: 'Montserrat_Semi_Bold', fontSize: 22.0);

  static const textDataSeparator = Text(" | ",
      style: TextStyle(
          color: Colors.white, fontFamily: 'Montserrat_Light', fontSize: 22.0));

  static const textRatingAndDurationIndicator = TextStyle(
      color: Colors.white, fontFamily: 'Montserrat_Regular', fontSize: 22.0);

  static const textRatingAndDuration = TextStyle(
      color: Colors.white, fontFamily: 'Montserrat_Light', fontSize: 20.0);

  static const textDataReleaseDate = TextStyle(
      color: Colors.white, fontFamily: 'Montserrat_Light', fontSize: 22.0);

  static const textDataPlot = TextStyle(
      color: Colors.white, fontFamily: 'Montserrat_Regular', fontSize: 18.0);

  static const textCastCharacter = TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontFamily: 'Montserrat_Regular',
      fontWeight: FontWeight.bold);

  static const textCastActor = TextStyle(
      color: Colors.white, fontSize: 12.0, fontFamily: 'Montserrat_Regular');
}
