import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

const _BAR_HEIGHT = 20.0;

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
        HeaderMenu(pageKey,_BAR_HEIGHT),
        Scaffold(
          body: Column(children: [
            Container(color:thameColor,child: Text(title),height: _BAR_HEIGHT,),
            child
          ],),
        ),
      ],
    );
  }
}