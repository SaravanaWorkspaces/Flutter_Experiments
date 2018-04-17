import 'package:flutter/material.dart';

///  Styles for the app widgets.
///
///  [APP_THEME] App theme to represent the apps
class Styles {
  /// Primary color to be used in in toolbar tile.
  static MaterialColor _PRIMARY_COLOR = Colors.orange;

  // Page background.
  static Color _BG_COLOR = Colors.grey[200];

  /// App theme.
  static ThemeData APP_THEME = new ThemeData(
      primaryColor: _PRIMARY_COLOR, scaffoldBackgroundColor: _BG_COLOR);
}
