import 'package:flutter/material.dart';
import 'package:flutter_profile_homepage/component/menu.dart';

class DisplayBase extends StatelessWidget
{
  DisplayBase(this.child,this.pageKey,{super.key});

  final Widget child;
  final String pageKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderMenu(pageKey),
        child
      ],
    );
  }
}