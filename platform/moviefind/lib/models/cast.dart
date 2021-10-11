import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefind/values/constants.dart';
import 'package:moviefind/values/styles.dart';

class Cast {
  static Widget castMembers(Map<String, dynamic> data) {
    var castMembers = data["cast"];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [for (var castMember in castMembers) actorItem(castMember)],
    );
  }

  static Widget actorItem(dynamic actorData) {
    return Card(
      child: Column(
        children: [
          if (actorData["profile_path"] != null)
            Image.network(Constants.IMG_PREFIX + actorData["profile_path"])
          else
            Image.asset("images/no_photo_placeholder.png"),
          ListTile(
            title: Text(
              actorData["original_name"],
              style: Styles.textCastActor,
            ),
            subtitle: Text(
              actorData["character"],
              style: Styles.textCastCharacter,
            ),
          )
        ],
      ),
    );
  }
}
