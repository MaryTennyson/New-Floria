

import 'package:floria/app/common/ui/themes/floria_theme/floria_color_theme.dart';
import 'package:floria/app/common/ui/themes/floria_theme/floria_text_theme.dart';
import 'package:floria/app/common/ui/themes/interfaces/i_text_theme.dart';
import 'package:floria/app/common/ui/themes/interfaces/i_theme.dart';

import '../interfaces/i_color_theme.dart';

class FloriaTheme extends ITheme {
  @override
  IColorTheme get colorTheme => LightColorTheme();

  @override
  ITextTheme get textTheme => LightTextTheme(
        colorTheme.colorScheme.onSecondary,
        "Delivery",
      );
}
