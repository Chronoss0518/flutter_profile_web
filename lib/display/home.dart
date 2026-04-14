
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const _TITLE = "Home";
const _THAME_COLOR = Colors.cyanAccent;

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
          backgroundColor: _THAME_COLOR,
          title: Text(_TITLE),
        ),
        body: Center(
        ),
      ),
      HOME_KEY,
    );
  }
}
