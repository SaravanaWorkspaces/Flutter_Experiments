import 'package:flutter/material.dart';
import 'list_item.dart';
import 'package:flutter_app/model/flutter_widget.dart';

/// Class to demonstrate simple list.
class SimpleListPage extends StatelessWidget {
  static const _PAGE_TITLE = "Flutter Widgets list";
  List<Widget> _listItems = new List();

  SimpleListPage(List<FlutterWidget> widgets) {
    widgets.forEach((f) {
      _listItems.add(new ListItem(f.name, f.desc));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text(_PAGE_TITLE)),
      body: new ListView(
        children: _listItems,
      ),
    );
  }
}
