import 'package:flutter_app/model/flutter_widget.dart';

/// Helper to generate model items.
class Mocker {
  /// Prepares list of [FlutterWidget].
  static List<FlutterWidget> createFlutterSupportedWidgets() {
    List<FlutterWidget> widgets = [];
    widgets.add(_createFlutterWidget("Text",
        "The [Text] widget displays a string of text with single style."));
    widgets.add(_createFlutterWidget(
        "RaisedButton",
        "A raised button is based on a [Material] widget "
        "whose [Material.elevation] increases when the button is pressed."));
    widgets
        .add(_createFlutterWidget("Image", "A widget that displays an image."));
    widgets.add(_createFlutterWidget("Container",
        "A convenience widget that combines common painting, positioning, and sizing widgets."));
    widgets.add(_createFlutterWidget(
        "Center", "A widget that centers its child within itself."));
    widgets.add(_createFlutterWidget(
        "Icon",
        "A graphical icon widget drawn with a glyph from a font described in an "
        "[IconData] such as material's predefined [IconData]s in [Icons]."));
    widgets.add(_createFlutterWidget("LayoutBuilder",
        "Builds a widget tree that can depend on the parent widget's size."));
    widgets.add(_createFlutterWidget("Form",
        "An optional container for grouping together multiple form field widgets (e.g. [TextField] widgets)."));
    return widgets;
  }

  /// Creates [FlutterWidget] with [name] and [desc].
  static FlutterWidget _createFlutterWidget(String name, String desc) {
    var flutterWidget = new FlutterWidget();
    flutterWidget.name = name;
    flutterWidget.desc = desc;
    return flutterWidget;
  }
}
