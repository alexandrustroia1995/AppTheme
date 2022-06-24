import 'package:flutter/cupertino.dart';

import 'fonts.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color);
}

TextStyle h1({double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(fontSize, FontsFamily.montserrat, FontWeight.w900, color);
}

TextStyle h2({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsFamily.montserrat, FontWeight.bold, color);
}
