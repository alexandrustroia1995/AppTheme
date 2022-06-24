import 'package:flutter/material.dart' as material;
import 'package:flutter_theme/theme/common/fonts.dart';
import 'package:flutter_theme/theme/design/app_button_style.dart';
import 'package:flutter_theme/theme/design/fonts_impl.dart';

import '../common/app_theme.dart';
import '../common/colors.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'colors_impl.dart';

class AppThemeImpl implements AppTheme {
  @override
  Colors get colors => ColorsImpl();

  @override
  Fonts get fonts => FontsImpl();

  @override
  material.ThemeData dark() {
    return material.ThemeData.dark().copyWith(extensions: <material.ThemeExtension<dynamic>>[
      AppFonts(h1: fonts.h1, h2: fonts.h2),
      AppColors(
        mainPrimaryNormal: colors.mainPrimaryNormal,
        mainPrimaryDark: colors.mainPrimaryDark,
        mainPrimaryLight: colors.mainPrimaryLight,
        mainSecondaryNormal: colors.mainSecondaryLight,
        mainSecondaryLight: colors.mainSecondaryLight,
        mainSecondaryDark: colors.mainSecondaryDark,
      ),
      AppButtonStyle(color: colors, borderRadius: 20),
    ]);
  }

  @override
  material.ThemeData light() {
    return material.ThemeData.light().copyWith(extensions: <material.ThemeExtension<dynamic>>[
      AppFonts(h1: fonts.h1, h2: fonts.h2),
      AppColors(
        mainPrimaryNormal: colors.mainPrimaryNormal,
        mainPrimaryDark: colors.mainPrimaryDark,
        mainPrimaryLight: colors.mainPrimaryLight,
        mainSecondaryNormal: colors.mainSecondaryLight,
        mainSecondaryLight: colors.mainSecondaryLight,
        mainSecondaryDark: colors.mainSecondaryDark,
      ),
      AppButtonStyle(color: colors, borderRadius: 20),
    ]);
  }
}
