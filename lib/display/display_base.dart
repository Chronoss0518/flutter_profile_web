import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

const EXPECTED_HEIGHT = 832.0;
const EXPECTED_WIDTH = 1280.0;

const _BAR_HEIGHT = 115.0 / EXPECTED_HEIGHT;
const _TEXT_SIZE_PARSEC = 32.0 / EXPECTED_HEIGHT;


class DisplayBase extends StatelessWidget
{
  const DisplayBase(this.child,this.pageKey,this.title,this.thameColor,{super.key});

  double getDisplayParsec(double width,double height)
  {
    double tmpWidth = width / EXPECTED_WIDTH;
    double tmpHeight = height / EXPECTED_HEIGHT;

    return tmpHeight > tmpWidth ? tmpWidth : tmpHeight;
  }

  final Widget child;
  final String pageKey;
  final String title;
  final Color thameColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double parsec = getDisplayParsec(size.width,size.height);

    double widthSize = EXPECTED_WIDTH * parsec;
    double heightSize = EXPECTED_HEIGHT * parsec;

    double textSize = _TEXT_SIZE_PARSEC * heightSize;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.black,
        child: Center(
          child: SizedBox(
            width: widthSize,
            height: heightSize,
            child: Column(children: [
              HeaderMenu(pageKey,widthSize,_BAR_HEIGHT * heightSize,textSize),
              Container(
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color:thameColor,),
                height: _BAR_HEIGHT * heightSize,
                child: Center(child: Text(title,style: TextStyle(fontSize: textSize))),),
              child
            ],),
          ),
        ),
      ),
    );
  }
}