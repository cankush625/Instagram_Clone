import 'package:flutter/material.dart';

Widget StatusBar = Expanded(
    child: ListView(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
      CircleAvatar(
        backgroundImage: NetworkImage(
          'https://avatars1.githubusercontent.com/u/41515472?s=400&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
        ),
        radius: 28,
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(
          'https://avatars1.githubusercontent.com/u/41515472?s=400&u=2e83d208268b51f32d5212de73328a501ecd4ce5&v=4',
        ),
        radius: 28,
      ),
    ],
  ),
);