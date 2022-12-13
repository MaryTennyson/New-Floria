import 'package:flutter/cupertino.dart';

abstract class ITextTheme {
  late final TextStyle headline1;
  late final TextStyle headline2;
  late final TextStyle headline3;
  late final TextStyle headline4;
  late final TextStyle headline5;
  late final TextStyle headline6;
  late final TextStyle subtitle1;
  late final TextStyle subtitle2;
  late final TextStyle body1;
  late final TextStyle body2;
  late final TextStyle button;
  late final TextStyle caption;
  late final TextStyle overline;

  late final Color fontColor;
  late final String fontFamily;

  ITextTheme(
    this.fontColor,
    this.fontFamily,
  );
}
