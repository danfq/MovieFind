import 'package:flutter/material.dart';
import 'package:moviefind/values/colors.dart';
import 'package:moviefind/values/strings.dart';
import 'package:moviefind/values/styles.dart';
import 'package:moviefind/main/framework.dart';

class Input {
  static Widget searchInput(BuildContext context) {
    final searchController = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: TextField(
              controller: searchController,
              style: Styles.textStyleSearchInput,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.colorBackgroundAppBar,
                border: InputBorder.none,
                hintText: Strings.textSearchHint,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              
              if (searchController.text.isEmpty) {

                Framework.showSnackbar(context, Strings.textSearchEmpty);

              } else {

                Framework.searchMovie(context, searchController.text);

              }

            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                Strings.textSearchButton,
                style: Styles.textButtonSearch,
              ),
            ),
          ),
        )
      ],
    );
  }
}
