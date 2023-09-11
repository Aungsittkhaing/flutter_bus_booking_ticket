import 'package:flutter/material.dart';
Color? primary = Colors.lightBlue[400];
Color? primaryCard = Colors.lightGreen[500];
class Styles{
  static Color? primaryColor = primary;
  static Color? primaryCardColor = primaryCard;
  static Color? greyKakiColor = Colors.black45;
  static Color? textColor = Colors.grey[800];
  static Color? bgColor = Colors.grey[200];
  static TextStyle textStyle = TextStyle(fontSize: 16.0, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyleOne = TextStyle(fontSize: 26.0, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyleTwo = TextStyle(fontSize: 21.0, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyleThree = TextStyle(fontSize: 17.0, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyleFour = TextStyle(fontSize: 14.0, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}