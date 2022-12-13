

import 'package:floria/app/common/ui/themes/interfaces/i_color_theme.dart';
import 'package:floria/app/common/ui/themes/interfaces/i_text_theme.dart';

abstract class ITheme {
  IColorTheme get colorTheme;

  ITextTheme get textTheme;
}
