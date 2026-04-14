import 'package:flutter/material.dart';

const HOME_KEY = "/";
const PROFILE_KEY = "/profile";
const GAME_KEY = "/game";
const LIBRARY_KEY = "/library";

class HeaderMenu extends StatelessWidget
{
  HeaderMenu(this.pageKey,{super.key});

  final String pageKey;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width / 4;
    return Row(children: [
      
    ],);
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

