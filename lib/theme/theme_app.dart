import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

class ThemeApp {
  static const primary = ColorRef(Colors.orange);
  static const onPrimary = ColorRef(Colors.black);
}

Map<ThemeRef, Object> anotherTheme = {
  ThemeApp.primary: Colors.grey[700]!,
  ThemeApp.onPrimary: Colors.white,
};
