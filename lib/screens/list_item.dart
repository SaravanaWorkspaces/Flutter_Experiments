import 'package:flutter/material.dart';
import 'package:flutter_app/res/size_values.dart';
import 'package:flutter_app/utils/CustomSnackBar.dart';

/// Item to be bind with [ListView].
class ListItem extends StatelessWidget {
  String _title;
  String _content;

  /// Constructor to init the data.
  ListItem(String title, String content) {
    _title = title;
    _content = content;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          new ListTile(
              title: new Text(_title),
              subtitle: new Text(_content),
              isThreeLine: true,
              onTap: () {
                CustomSnackBar.show(
                    context, "Hey you have just pressed $_title");
              }),
          new Divider(height: Margin.MEDIUM, color: Colors.grey)
        ],
      ),
    );
  }
}
