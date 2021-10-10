import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefind/values/constants.dart';
import 'package:moviefind/values/styles.dart';

class Data {
  static Widget dataHolder(Map<String, dynamic> data) {
    if (data["title"] == null) {
      return Center(
        child: Styles.borderedText("No Data", Colors.black, Colors.white, 22.0),
      );
    } else {
      return Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      Constants.IMG_PREFIX + data["poster_path"],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
