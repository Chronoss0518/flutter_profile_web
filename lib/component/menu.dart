import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/display/home.dart';
import 'package:flutter_profile_homepage/display/profile.dart';

const HOME_KEY = "/";
const PROFILE_KEY = "/profile";
const GAME_KEY = "/game";
const LIBRARY_KEY = "/library";

class HeaderMenu extends StatelessWidget
{
  HeaderMenu(this.pageKey,this.height,{super.key});

  final String pageKey;
  final double height;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width / 4;
    return Row(children: [
      _buildButtonPanels(context,widthSize,HOME_KEY,HOME_TITLE,HOME_THAME_COLOR),
      _buildButtonPanels(context,widthSize,PROFILE_KEY,PROFILE_TITLE,PROFILE_THAME_COLOR),
    ],);
  }

  Widget _buildButtonPanels(
    BuildContext context,
    double width,
    String pageKey,
    String title,
    Color thema)
  {
    return MaterialButton(
      onPressed: (){_changePage(context, pageKey);},
      child: Container(
        color: thema,
        width: width,
        height: height,
        child: Text(title),
        )
    );
  }

  void _changePage(BuildContext context,String changePageName)
  {
    if(context == null)return;
    if(pageKey == changePageName)return;
    bool find = false;

    if(changePageName == HOME_KEY)find = true;
    if(changePageName == PROFILE_KEY)find = true;
    //if(changePageName == GAME_KEY)find = true;
    //if(changePageName == LIBRARY_KEY)find = true;

    if(!find)return;

    Navigator.of(context).pushNamed(changePageName);
  }
}

