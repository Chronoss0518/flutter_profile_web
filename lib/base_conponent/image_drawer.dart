import 'package:flutter/material.dart';

class ImageDrawer extends StatelessWidget
{
  ImageDrawer(
    this.imageName,
    {
      this.width,
      this.height,
      this.padding,
      this.margin,
      super.key
    }
  );

  final String imageName;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height:height,
      padding:padding,
      margin:margin,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imageName))),
    );
  }
}