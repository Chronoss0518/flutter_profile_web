
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const LIBRARY_TITLE = "Home";
const LIBRARY_THAME_COLOR = Color.fromARGB(255,255,125,255);

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _State();
}

class _State extends State<Library> {

  @override
  Widget build(BuildContext context) {
    return DisplayBase(
      Center(),
      LIBRARY_KEY,
      LIBRARY_TITLE,
      LIBRARY_THAME_COLOR,
    );
  }
}
