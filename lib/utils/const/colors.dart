import 'package:flutter/material.dart';

class TColors {
//Application theme colors
  static const Color primary = Color(0xFF0E0E0E);
  static const Color secondary = Color(0xFFF6F6F5);
//Text theme colors
  static const Color textPrimary = TColors.primary;
  static const Color textSecondary = TColors.secondary;
  static const Color textShades = TColors.white30;
//Shades theme color
  static const Color white30 = Color(0x4DF6F6F5);
  static const Color white25 = Color(0x40F6F6F5);
  static const Color white10 = Color(0x1AF6F6F5);
  static const Color black10 = Color(0x1A0E0E0E);
  static const Color black60 = Color(0x990E0E0E);
//Gradients theme colors
  static const LinearGradient whiteGradients = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0X33F6F6F5),
        Color(0X1AF6F6F5),
      ]);
  static const LinearGradient whiteGradientsInner = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0X40F6F6F5),
        Color(0X4DF6F6F5),
      ]);
  static const LinearGradient blackGradients90 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0X990E0E0E),
        Color(0XCC0E0E0E),
      ]);
}
