import 'package:flutter/material.dart' as material;
import 'package:flutter_theme/theme/common/fonts.dart';

import 'colors.dart';


abstract class AppTheme {
  Colors get colors;
  Fonts get fonts;


  material.ThemeData light();

  material.ThemeData dark();
}
