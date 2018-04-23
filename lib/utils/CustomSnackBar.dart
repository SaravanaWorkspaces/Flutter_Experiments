import 'package:flutter/material.dart';

/// [SnackBar] to display immediate message.
class CustomSnackBar {

  static show(BuildContext context, String message) {
    final snackBar = new SnackBar(content: new Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
