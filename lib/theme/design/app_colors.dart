import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? mainPrimaryNormal;
  final Color? mainPrimaryDark;
  final Color? mainPrimaryLight;

  final Color? mainSecondaryNormal;
  final Color? mainSecondaryLight;
  final Color? mainSecondaryDark;

  AppColors(
      {this.mainPrimaryNormal,
      this.mainPrimaryDark,
      this.mainPrimaryLight,
      this.mainSecondaryNormal,
      this.mainSecondaryLight,
      this.mainSecondaryDark});

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
        mainPrimaryNormal: Color.lerp(mainPrimaryNormal, other.mainPrimaryNormal, t),
        mainPrimaryDark: Color.lerp(mainPrimaryDark, other.mainPrimaryDark, t),
        mainPrimaryLight: Color.lerp(mainPrimaryLight, other.mainPrimaryLight, t),
        mainSecondaryLight: Color.lerp(mainSecondaryLight, other.mainSecondaryLight, t),
        mainSecondaryDark: Color.lerp(mainSecondaryDark, other.mainSecondaryDark, t),
        mainSecondaryNormal: Color.lerp(mainSecondaryNormal, other.mainSecondaryNormal, t));
  }

  AppColors copyWith({
    Color? mainPrimaryNormal,
    Color? mainPrimaryDark,
    Color? mainPrimaryLight,
    Color? mainSecondaryNormal,
    Color? mainSecondaryLight,
    Color? mainSecondaryDark,
  }) {
    return AppColors(
      mainPrimaryNormal: mainPrimaryNormal ?? this.mainPrimaryNormal,
      mainPrimaryDark: mainPrimaryDark ?? this.mainPrimaryDark,
      mainPrimaryLight: mainPrimaryLight ?? this.mainPrimaryLight,
      mainSecondaryNormal: mainSecondaryNormal ?? this.mainSecondaryNormal,
      mainSecondaryLight: mainSecondaryLight ?? this.mainSecondaryLight,
      mainSecondaryDark: mainSecondaryDark ?? this.mainSecondaryDark,
    );
  }
}
