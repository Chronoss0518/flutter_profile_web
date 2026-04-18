import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

const EXPECTED_HEIGHT = 832.0;
const EXPECTED_WIDTH = 1280.0;

const _BAR_HEIGHT = 115.0 / EXPECTED_HEIGHT;
const _TEXT_SIZE_PARSEC = 32.0 / EXPECTED_HEIGHT;

class DisplayBase extends StatelessWidget
{
  const DisplayBase(this.child,this.pageKey,this.title,this.thameColor,{super.key});

  static Size getDisplayParsec(double width,double height)
  {
    double tmpWidth = width / EXPECTED_WIDTH;
    double tmpHeight = height / EXPECTED_HEIGHT;

    double parsec = tmpHeight > tmpWidth ? tmpWidth : tmpHeight;;
    
    return Size(EXPECTED_WIDTH * parsec,EXPECTED_HEIGHT * parsec);
  }

  final Widget child;
  final String pageKey;
  final String title;
  final Color thameColor;

  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size;

    var size = getDisplayParsec(mediaSize.width,mediaSize.height);

    double textSize = _TEXT_SIZE_PARSEC * size.height;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.black,
        child: Center(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(children: [
              HeaderMenu(pageKey,size.width,_BAR_HEIGHT * size.height,textSize),
              Container(
                decoration:BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color:thameColor,),
                height: _BAR_HEIGHT * size.height,
                child: Center(child: Text(title,style: TextStyle(fontSize: textSize))),),
              child
            ],),
          ),
        ),
      ),
    );
  }
}