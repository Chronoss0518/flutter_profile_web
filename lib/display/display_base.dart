import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

const _BAR_HEIGHT = 40.0;

class DisplayBase extends StatelessWidget
{
  DisplayBase(this.child,this.pageKey,this.title,this.thameColor,{super.key});

  final Widget child;
  final String pageKey;
  final String title;
  final Color thameColor;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        HeaderMenu(pageKey,_BAR_HEIGHT),
        Container(
          child: Center(child: Text(title)),
          decoration:BoxDecoration(
            border: Border.all(color: Colors.black),
            color:thameColor,),
          height: _BAR_HEIGHT,
          width: widthSize,),
        child
      ],),
    );
  }
}