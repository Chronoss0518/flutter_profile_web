
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';

const PROFILE_TITLE = "Profile";
const PROFILE_THAME_COLOR = Color.fromARGB(255, 125, 255, 255);

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _State();
}

class _State extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return DisplayBase(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Row(children: [

          ],)
        ]
      ),
      PROFILE_KEY,
      PROFILE_TITLE,
      PROFILE_THAME_COLOR
    );
  }
}
