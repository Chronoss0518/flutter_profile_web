
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const GAME_TITLE = "Home";
const GAME_THAME_COLOR = Color.fromARGB(255, 255, 255, 125);

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _State();
}

class _State extends State<Game> {

  @override
  Widget build(BuildContext context) {
    return DisplayBase(
      Center(),
      GAME_KEY,
      GAME_TITLE,
      GAME_THAME_COLOR,
    );
  }
}
