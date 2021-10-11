import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefind/values/constants.dart';
import 'package:moviefind/values/styles.dart';

class Cast {
  static Widget castMembers(Map<String, dynamic> data) {
    var castMembers = data["cast"];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (var castMember in castMembers) Text(castMember.toString())
      ],
    );
  }

  static Widget actorItem(dynamic actorData) {
    return Card(
      child: Wrap(
        children: [
          Image.network(Constants.IMG_PREFIX + actorData["profile_path"]),
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
