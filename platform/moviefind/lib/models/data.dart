import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefind/models/cast.dart';
import 'package:moviefind/util/time.dart';
import 'package:moviefind/values/constants.dart';
import 'package:moviefind/values/styles.dart';

class Data {
  static Widget dataHolder(BuildContext context, Map<String, dynamic> data) {
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black45,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            data["title"],
                            style: Styles.textDataTitle,
                          ),
                          Styles.textDataSeparator,
                          Text(
                            data["release_date"],
                            style: Styles.textDataReleaseDate,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            "Rating: ",
                            style: Styles.textRatingAndDurationIndicator,
                          ),
                          Text(
                            data["vote_average"].toString() + " / " + "10",
                            style: Styles.textRatingAndDuration,
                          ),
                          Text(
                            " (" + data["vote_count"].toString() + " votes)",
                            style: Styles.textRatingAndDuration,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Row(
                        children: [
                          Text(
                            "Duration: ",
                            style: Styles.textRatingAndDurationIndicator,
                          ),
                          Text(
                            data["runtime"].toString() +
                                " minutes (" +
                                Time.timeConvert(data["runtime"]) +
                                ")",
                            style: Styles.textRatingAndDuration,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          data["overview"],
                          style: Styles.textDataPlot,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Cast.castMembers(data),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
