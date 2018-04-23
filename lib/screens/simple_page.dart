import 'package:flutter/material.dart';
import 'package:flutter_app/res/size_values.dart';

/// Simple page with Button to terminate itself.
class SimplePage extends StatelessWidget {
  static final PAGE_TITLE = "Simple Page";
  static final PAGE_CONTENT = "Hey I'm a simple page.!";
  static final BTN_TERMINATE_TEXT = "Click to terminate me!";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(PAGE_TITLE)),
        body: new Container(
            child: Center(
          child: Column(
            children: <Widget>[
              new Text(PAGE_CONTENT),
              new Container(
                  padding: new EdgeInsets.symmetric(vertical: Margin.X_LARGE),
                  child: new RaisedButton(
                      child: new Text(BTN_TERMINATE_TEXT),
                      onPressed: () {
                        /// Terminate screen.
                        Navigator.pop(context);
                      }))
            ],
          ),
        )));
  }
}
