import 'package:flutter/material.dart';
import 'package:flutter_theme/theme/common/colors.dart' as colors;

class AppButtonStyle extends ThemeExtension<AppButtonStyle> {
  final colors.Colors color;
  final double? size;
  final double? borderRadius;

  AppButtonStyle({required this.color, this.size, this.borderRadius});

  @override
  ThemeExtension<AppButtonStyle> lerp(ThemeExtension<AppButtonStyle>? other, double t) {
    if (other is! AppButtonStyle) {
      return this;
    }

    final double defaultSize = size ?? 100;
    final double defaultBorderRadius = borderRadius ?? 0;
    return AppButtonStyle(
      color: color,
      size: other.size != null ? ((other.size! - defaultSize) * t) + defaultSize : size,
      borderRadius: other.borderRadius != null ? ((other.borderRadius! - defaultBorderRadius) * t) : borderRadius,
    );
  }

  AppButtonStyle copyWith({
    colors.Colors? color,
    double? size,
    double? borderRadius,
    double? defaultSize,
    double? defaultBorderRadius,
  }) {
    return AppButtonStyle(
      color: color ?? this.color,
      size: size ?? this.size,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
