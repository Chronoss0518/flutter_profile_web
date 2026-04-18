
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const HOME_TITLE = "Home";
const HOME_THAME_COLOR = Color.fromARGB(255, 125, 125, 125);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DisplayBase(
      Center(),
      HOME_KEY,
      HOME_TITLE,
      HOME_THAME_COLOR,
    );
  }
}
