import 'package:flutter/material.dart';
import 'styles.dart';

/// Landing page.
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Sample",
      theme: Styles.APP_THEME,
      home: PageContainer(),
    );
  }
}

/// Root [Widget] attaches in page body.
class PageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(12.0),
                child: new RaisedButton(
                  onPressed: onPressed,
                  elevation: 2.5,
                  highlightElevation: 10.0,
                  child: new Text("Move next page"),
                ),
              ),
              new Container(
                padding: EdgeInsets.all(12.0),
                child: new RaisedButton(
                  elevation: 2.5,
                  highlightElevation: 10.0,
                  onPressed: onPressed,
                  child: new Text("Infinitive list"),
                ),
              ),
            ],
          ),
        ));
  }

  void onPressed() {}
}
