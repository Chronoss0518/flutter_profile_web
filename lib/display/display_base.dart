import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

const _BAR_HEIGHT = 115.0 / 832.0;
const _TEXT_SIZE_PARCEK = 32.0 / 832.0;

class DisplayBase extends StatelessWidget
{
  const DisplayBase(this.child,this.pageKey,this.title,this.thameColor,{super.key});

  final Widget child;
  final String pageKey;
  final String title;
  final Color thameColor;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    double textSize = _TEXT_SIZE_PARCEK * heightSize;

    return Scaffold(
      body: Column(children: [
        HeaderMenu(pageKey,_BAR_HEIGHT * heightSize,textSize),
        Container(
          decoration:BoxDecoration(
            border: Border.all(color: Colors.black),
            color:thameColor,),
          height: _BAR_HEIGHT * heightSize,
          width: widthSize,
          child: Center(child: Text(title,style: TextStyle(fontSize: textSize))),),
        child
      ],),
    );
  }
}