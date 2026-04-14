
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const _TITLE = "Profile";
const _THAME_COLOR = Colors.cyanAccent;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _State();
}

class _State extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return DisplayBase(
      Scaffold(
        appBar: AppBar(
          backgroundColor: _THAME_COLOR,
          title: Text(_TITLE),
        ),
        body: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(children: [
              
            ],)
          ]
        ),
      ),
      PROFILE_KEY,
    );
  }
}
