import 'package:flutter/material.dart';

///  Styles for the app widgets.
///
///  [app_theme] App theme to represent the apps
class Styles {
  /// Primary color to be used in in toolbar tile.
  static const MaterialColor _primaryColor = Colors.orange;

  // Page background.
  static Color _backgroundColor = Colors.grey[200];

  /// App theme.
  static ThemeData appTheme = new ThemeData(
      primaryColor: _primaryColor, scaffoldBackgroundColor: _backgroundColor);
}
