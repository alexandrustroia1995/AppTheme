import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_theme/theme/common/colors.dart';
import 'package:flutter_theme/theme/common/fonts.dart';
import 'package:flutter_theme/theme/common/text_styles.dart' as styles;
import 'package:flutter_theme/theme/design/colors_impl.dart';

class FontsImpl implements Fonts {
  @override
  TextStyle get h1 => styles.h1(color: color.dark);

  @override
  TextStyle get h2 => styles.h1(color: color.dark);

  @override
  Colors get color => ColorsImpl();
}
