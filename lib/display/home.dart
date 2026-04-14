
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const HOME_TITLE = "Home";
const HOME_THAME_COLOR = Colors.grey;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DisplayBase(
      Scaffold(
        appBar: AppBar(
          backgroundColor: HOME_THAME_COLOR,
          title: Text(HOME_TITLE),
        ),
        body: Center(
        ),
      ),
      HOME_KEY,
      HOME_TITLE,
      HOME_THAME_COLOR,
    );
  }
}
