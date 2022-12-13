
import 'package:floria/app/common/ui/themes/interfaces/i_color_theme.dart';
import 'package:flutter/material.dart';

class LightColorTheme implements IColorTheme {
  @override
  late final ColorScheme colorScheme;

  @override
  late final Color iconColor;

  @override
  late final Color appBarTitleColor;

  @override
  late final Color scaffoldBackgroundColor;

  LightColorTheme() {
    colorScheme = const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFE998BD),
      secondary: Color(0xFFE9B7CE),
      secondaryContainer: Color(0XFFD3F3F1),
      background: Color(0XFFFFFFFF),
      surface: Color(0XFFFFFFFF),
      error: Color(0XFFFFFFFF),
      onPrimary: Color(0XFFFFFFFF),
      onSecondary: Color(0XFF000000),
      onBackground: Color(0XFF000000),
      onSurface: Color(0XFF000000),
      onError: Color(0XFFFFFFFF),
    );

    iconColor = Color(0XFFFFFFFF);
    appBarTitleColor = Color(0XFF000000);
    scaffoldBackgroundColor = Color(0XFFFFFFFF);
  }
}
