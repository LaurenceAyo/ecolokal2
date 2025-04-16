import 'package:flutter/material.dart';

class TColors{
  TColors._();

  //App Basic Colors
  static const Color primaryColor = Color(0xFF90EE90);
  static const Color secondaryColor = Color(0xFFBEE8D0);
  static const Color tertiaryColor = Color(0xFFFFE24B);
  static const Color quaternaryColor = Color(0xFF6C757D);
  static const Color error = Color(0xFF212121);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);

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