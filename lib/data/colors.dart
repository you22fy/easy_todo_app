import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();

  static const Color deleteRed = Color(0xFFFE4A49);
  static const Color doneGreen = Color(0xFF7BC043);
  static const Color primary = Color.fromARGB(255, 208, 164, 213);
  static const Color disable = Color.fromARGB(255, 127, 127, 128);
  static Color backgroundColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? const Color(0xFFFFFFFF)
          : const Color(0x000000FF);

  static Color subBackgroundColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? const Color.fromARGB(255, 191, 191, 191)
          : const Color.fromARGB(255, 73, 73, 73);

  static Color textColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? const Color.fromARGB(255, 67, 67, 67)
          : const Color(0xFFFFFFFF);
}
