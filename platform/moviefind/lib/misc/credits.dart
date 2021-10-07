import 'package:flutter/material.dart';
import 'package:moviefind/values/strings.dart';
import 'package:moviefind/values/styles.dart';

class Misc {
  static Widget bottomCredits() {
    return BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
              Strings.textCredits,
              style: Styles.textStyleCredits,
              textAlign: TextAlign.center
            ),
        ));
  }
}
