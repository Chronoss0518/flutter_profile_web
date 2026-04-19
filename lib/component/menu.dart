import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/display/game.dart';
import 'package:flutter_profile_homepage/display/home.dart';
import 'package:flutter_profile_homepage/display/library.dart';
import 'package:flutter_profile_homepage/display/profile.dart';

const HOME_KEY = "/";
const PROFILE_KEY = "/profile";
const GAME_KEY = "/game";
const LIBRARY_KEY = "/library";

class HeaderMenu extends StatelessWidget
{
  const HeaderMenu(this.pageKey,this.width,this.height,this.textSize,{super.key});

  final String pageKey;
  final double height;
  final double textSize;
  final double width;

  @override
  Widget build(BuildContext context) {
    double widthSize = width / 4;
    return Row(children: [
      _buildButtonPanels(context,widthSize,HOME_KEY,HOME_TITLE,HOME_THAME_COLOR),
      _buildButtonPanels(context,widthSize,PROFILE_KEY,PROFILE_TITLE,PROFILE_THAME_COLOR),
      _buildButtonPanels(context,widthSize,GAME_KEY,GAME_TITLE,GAME_THAME_COLOR),
      _buildButtonPanels(context,widthSize,LIBRARY_KEY,LIBRARY_TITLE,LIBRARY_THAME_COLOR),
    ],);
  }

  Widget _buildButtonPanels(
    BuildContext context,
    double width,
    String pageKey,
    String title,
    Color thema)
  {
    return Container(
      width: width,
      height: height,
      decoration:BoxDecoration(
        color: thema,
        border: Border.all(color: Colors.black)),
      child: MaterialButton(
        onPressed: (){_changePage(context, pageKey);},
        child: Center(child: Text(title,style: TextStyle(fontSize: textSize),)),
      ),
    );
  }

  void _changePage(BuildContext context,String changePageName)
  {
    if(pageKey == changePageName)return;
    changePage(context, changePageName);
  }

  static void changePage(BuildContext context,String changePageName)
  {

    bool find = false;
    if(changePageName == HOME_KEY)find = true;
    if(changePageName == PROFILE_KEY)find = true;
    if(changePageName == GAME_KEY)find = true;
    if(changePageName == LIBRARY_KEY)find = true;

    if(!find)return;

    Navigator.of(context).pushNamed(changePageName);
  }
}

