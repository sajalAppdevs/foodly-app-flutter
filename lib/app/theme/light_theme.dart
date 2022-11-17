// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';

import '../util/util.dart';

const TextStyle style_grey = TextStyle(color: grey);
ThemeData dark = ThemeData(
  backgroundColor: greybg,
  appBarTheme: const AppBarTheme(backgroundColor: greybg),
  hintColor: grey,
  inputDecorationTheme: const InputDecorationTheme(
      hintStyle: style_grey, prefixIconColor: grey, suffixIconColor: grey),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: Util.buttonStyle(bgc: orange),
  ),
);
