import 'package:flutter/material.dart';

class TColors{
  TColors._();

  //App Basic Colors
  static const Color primary = Color(0xFF90EE90);
  static const Color secondary = Color(0xFFBEE8D0);
  static const Color tertiary = Color(0xFFFFE24B);
  static const Color quater = Color(0xFF6C757D);
  static const Color error = Color(0xFF212121);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color dark = Color(0xFF000000);
  static const Color light = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF808080);
  static const Color darkGrey = Color(0xFF404040);

  //Gradient
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFF9ACD32),
      Color(0xFF90EE90),
      Color(0xFF008000)
    ],
  );
}