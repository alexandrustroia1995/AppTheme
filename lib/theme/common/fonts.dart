import 'package:flutter/material.dart';
import '../common/colors.dart' as custom_color;

/*Maybe use an abstract class for this */
class FontsFamily {
  static const String montserrat = "Montserrat";
}

/*Maybe use an abstract class for this */
class FontsWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

/*Maybe use an abstract class for this */
class FontSize {
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
}

/*Maybe use an abstract class for this */
abstract class Fonts {
  custom_color.Colors get color;

  TextStyle get h1;

  TextStyle get h2;
}
