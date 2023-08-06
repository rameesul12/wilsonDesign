
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconsWidget extends StatelessWidget {
   IconsWidget({
    super.key,
    required this.iconData
  });
String iconData;
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;

    return SizedBox(
      height:size.height*0.1 ,
      width: size.width*0.1,
      child: Image.asset(iconData));
  }
}
