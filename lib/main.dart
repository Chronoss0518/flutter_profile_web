import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/profile.dart';

import 'display/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:<String, WidgetBuilder>{
        HOME_KEY :(BuildContext context) {return const Home();},
        PROFILE_KEY :(BuildContext context) {return const Profile();},
      },
      initialRoute: HOME_KEY,
    );
  }
}
