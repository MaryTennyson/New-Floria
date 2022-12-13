
import 'package:floria/app/common/ui/themes/interfaces/i_theme.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData createTheme(ITheme theme) {
    return ThemeData(
      colorScheme: theme.colorTheme.colorScheme,
      fontFamily: theme.textTheme.fontFamily,
      scaffoldBackgroundColor: theme.colorTheme.scaffoldBackgroundColor,
      backgroundColor: theme.colorTheme.scaffoldBackgroundColor,
      textTheme: TextTheme(
        bodyText1: theme.textTheme.body1,
        bodyText2: theme.textTheme.body2,
        headline1: theme.textTheme.headline1,
        headline2: theme.textTheme.headline2,
        headline3: theme.textTheme.headline3,
        headline4: theme.textTheme.headline4,
        headline5: theme.textTheme.headline5,
        headline6: theme.textTheme.headline6,
        subtitle1: theme.textTheme.subtitle1,
        subtitle2: theme.textTheme.subtitle2,
        button: theme.textTheme.button,
        caption: theme.textTheme.caption,
        overline: theme.textTheme.overline,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            theme.colorTheme.colorScheme.onSecondary,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            const Size.fromHeight(48),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            theme.colorTheme.colorScheme.onSecondary,
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            theme.textTheme.button,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        border: OutlineInputBorder(),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(
          theme.colorTheme.colorScheme.onSecondary,
        ),
        fillColor: MaterialStateProperty.all<Color>(
          theme.colorTheme.colorScheme.primary,
        ),
      ),
      // iconTheme: IconThemeData(color: theme.colorTheme.iconColor),
      // appBarTheme: AppBarTheme(
      //   titleTextStyle: theme.textTheme.headline6.copyWith(
      //     color: theme.colorTheme.appBarTitleColor,
      //   ),
      // ),
      // highlightColor: theme.colorTheme.colorScheme.primary.withOpacity(0.1),
      // disabledColor: AppColors.lightOnSurfaceDisabled,
      // errorColor: theme.colorTheme.colorScheme.error,
      // drawerTheme: DrawerThemeData(
      //   backgroundColor: theme.colorTheme.scaffoldBackgroundColor,
      // ),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ButtonStyle(
      //     elevation: MaterialStateProperty.all<double>(8),
      //     padding: MaterialStateProperty.all(EdgeInsets.zero),
      //   ),
      // ),
    );
  }
}
