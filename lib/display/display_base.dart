import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

class DisplayBase extends StatelessWidget
{
  DisplayBase(this.child,this.pageKey,this.title,this.thameColor,{super.key});

  final Widget child;
  final String pageKey;
  final String title;
  final Color thameColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderMenu(pageKey),
        Scaffold(
          appBar: AppBar(
            backgroundColor: thameColor,
            title: Text(title),
          ),
          body: child,
        ),
      ],
    );
  }
}