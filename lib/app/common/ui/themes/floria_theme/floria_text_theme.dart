
import 'package:floria/app/common/ui/themes/floria_theme/floria_color_theme.dart';
import 'package:floria/app/common/ui/themes/interfaces/i_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LightTextTheme implements ITextTheme {
  @override
  late final TextStyle body1;

  @override
  late final TextStyle body2;

  @override
  late final TextStyle button;

  @override
  late final TextStyle caption;

  @override
  late final TextStyle headline1;

  @override
  late final TextStyle headline2;

  @override
  late final TextStyle headline3;

  @override
  late final TextStyle headline4;

  @override
  late final TextStyle headline5;

  @override
  late final TextStyle headline6;

  @override
  late final TextStyle overline;

  @override
  late final TextStyle subtitle1;

  @override
  late final TextStyle subtitle2;

  @override
  late final Color fontColor;

  @override
  late final String fontFamily;

  LightTextTheme(
    this.fontColor,
    this.fontFamily,
  ) {
    headline1 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 96.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    headline2 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 60.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    headline3 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 48.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    headline4 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 34.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    headline5 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 24.sp,
      fontStyle: FontStyle.normal,
      color: LightColorTheme().colorScheme.secondary,
      leadingDistribution: TextLeadingDistribution.even,
    );

    headline6 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 20.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    body1 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    body2 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    subtitle1 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    subtitle2 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    button = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    caption = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );

    overline = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 10.sp,
      fontStyle: FontStyle.normal,
      color: fontColor,
      leadingDistribution: TextLeadingDistribution.even,
    );
  }
}
