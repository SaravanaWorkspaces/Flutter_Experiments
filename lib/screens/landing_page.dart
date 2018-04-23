import 'package:flutter/material.dart';
import 'package:flutter_app/res/styles.dart';
import 'package:flutter_app/res/size_values.dart';
import 'package:flutter_app/utils/mocker.dart';
import 'simple_page.dart';
import 'simple_list_page.dart';

/// Landing page.
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static final APP_NAME = "Flutter Sample";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: APP_NAME,
      theme: Styles.appTheme,
      home: PageContainer(),
    );
  }
}

/// Root [Widget] attaches in page body.
class PageContainer extends StatelessWidget {
  static final String MOVE_TO_NEXT_SCREEN_BTN_TEXT = "Move next page!";
  static final String INFINITE_LIST_TEXT = "Flutter Widgets!";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Home"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.symmetric(vertical: Margin.LARGE),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SimplePage()));
                  },
                  elevation: Elevation.SMALL,
                  highlightElevation: Elevation.MEDIUM,
                  child: new Text(MOVE_TO_NEXT_SCREEN_BTN_TEXT),
                ),
              ),
              new Container(
                padding: new EdgeInsets.symmetric(vertical: Margin.LARGE),
                child: new RaisedButton(
                  elevation: Elevation.SMALL,
                  highlightElevation: Elevation.MEDIUM,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                            new SimpleListPage(
                                Mocker.createFlutterSupportedWidgets())));
                  },
                  child: new Text(INFINITE_LIST_TEXT),
                ),
              ),
            ],
          ),
        ));
  }
}
