import 'package:flutter/material.dart';
import 'package:gighive/Config/colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: bgColor,
    primary: primColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: fontColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: fontColor,
    ),
  ),
);
