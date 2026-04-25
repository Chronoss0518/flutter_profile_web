
import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';
import 'package:flutter_profile_homepage/display/display_base.dart';
import 'package:flutter_profile_homepage/display/game.dart';
import 'package:flutter_profile_homepage/display/library.dart';
import 'package:flutter_profile_homepage/display/profile.dart';

const HOME_TITLE = "Home";
const HOME_THAME_COLOR = Color.fromARGB(255, 125, 125, 125);

const _TITLE_TEXT_SIZE_PARSEC = 40.0 / EXPECTED_HEIGHT;
const _DESCRIPTION_TEXT_SIZE_PARSEC = 32.0 / EXPECTED_HEIGHT;

const _ALINE_SIZE = 95.0 / EXPECTED_WIDTH;
const _PANEL_WIDTH = 300.0 / EXPECTED_WIDTH;
const _PANEL_HEIGHT = 300.0 / EXPECTED_HEIGHT;

const _TOP_TEXT_TOP_ALINE = 35.0 / EXPECTED_HEIGHT;
const _TOP_TEXT_SIZE = 32.0 / EXPECTED_HEIGHT;
const _TOP_TEXT_HEIGHT = 39.0 / EXPECTED_HEIGHT;

const _DESCRIPTION_TOP_ALINE = 17.0 / EXPECTED_HEIGHT;
const _DESCRIPTION_SIZE = 24.0 / EXPECTED_HEIGHT;
const _DESCRIPTION_HEIGHT = 87.0 / EXPECTED_HEIGHT;

const _PANEL_TOP_ALINE = 18.0 / EXPECTED_HEIGHT;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {

  @override
  Widget build(BuildContext context) {

    var mediaSize = MediaQuery.of(context).size;

    var size = DisplayBase.getDisplayParsec(mediaSize.width,mediaSize.height);

    return DisplayBase(
      Column(children: [
        Container(
          margin: EdgeInsets.only(top:_TOP_TEXT_TOP_ALINE * size.height),
          height: _TOP_TEXT_HEIGHT  * size.height,
          child: Text("Chronossの紹介ページ",style: TextStyle(fontSize: _TOP_TEXT_SIZE * size.height),),
        ),
        Container(
          margin: EdgeInsets.only(top:_DESCRIPTION_TOP_ALINE * size.height),
          height: _DESCRIPTION_HEIGHT  * size.height,
          child: Text(
            '''
Chronossは個人でゲームを作っている一人です。専門学生時代からライブラリの構築を始め、
それを利用したゲームやUnity・Unreal Engineを用いたゲーム開発も行う事があります。
            '''
            ,style: TextStyle(fontSize: _DESCRIPTION_SIZE * size.height),textAlign: TextAlign.center,),
        ),
        Container(
          margin: EdgeInsets.only(top:_PANEL_TOP_ALINE * size.height),
          child: Center(
            child: Row(
              children: [
              _createPanels(context,PROFILE_KEY,PROFILE_THAME_COLOR,PROFILE_TITLE,"より詳細な情報を確認できます。"),
              _createPanels(context,GAME_KEY,GAME_THAME_COLOR,GAME_TITLE,"Chronossの制作しているゲームを確認できます。"),
              _createPanels(context,LIBRARY_KEY,LIBRARY_THAME_COLOR,LIBRARY_TITLE,"Chronossの制作しているライブラリを確認できます。"),
            ],),
          ),
        )
      ],),
      HOME_KEY,
      HOME_TITLE,
      HOME_THAME_COLOR,
    );
  }

  Widget _createPanels(BuildContext context,String pageKey,Color thema,String title,String description,)
  {
    var mediaSize = MediaQuery.of(context).size;

    var size = DisplayBase.getDisplayParsec(mediaSize.width,mediaSize.height);

    return Container(
      margin: EdgeInsets.only(left:_ALINE_SIZE * size.width,),
      width:_PANEL_WIDTH * size.width,
      height:_PANEL_HEIGHT * size.height,
      decoration: BoxDecoration(color:thema,border: Border.all()),
      child:MaterialButton(
        onPressed: (){HeaderMenu.changePage(context,pageKey);},
        child:Column(children: [
          Center(child: Text(title,style: TextStyle(fontSize: _TITLE_TEXT_SIZE_PARSEC * size.height),)),
          Center(child: Text(description,style: TextStyle(fontSize: _DESCRIPTION_TEXT_SIZE_PARSEC * size.height),maxLines: 8,))
        ],),)
    );
  }
}
