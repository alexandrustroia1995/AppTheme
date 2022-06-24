import 'package:flutter/material.dart';

class AppFonts extends ThemeExtension<AppFonts> {
  final TextStyle? h1;
  final TextStyle? h2;

  AppFonts({this.h1, this.h2});

  @override
  ThemeExtension<AppFonts> lerp(ThemeExtension<AppFonts>? other, double t) {
    if (other is! AppFonts) {
      return this;
    }
    return AppFonts(h1: h1, h2: h2);
  }

  AppFonts copyWith({
    TextStyle? h1,
    TextStyle? h2,
  }) {
    return AppFonts(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
    );
  }
}
