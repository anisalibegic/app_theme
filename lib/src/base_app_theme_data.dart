import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
abstract class BaseAppThemeData {
  final String fontFamily;
  final Brightness brightness;
  final MaterialColor swatch;
  final SystemUiOverlayStyle systemUiOverlayStyle;

  const BaseAppThemeData({
    @required this.swatch,
    @required this.brightness,
    @required this.fontFamily,
    @required this.systemUiOverlayStyle,
  })  : assert(swatch != null),
        assert(brightness != null),
        assert(fontFamily != null),
        assert(systemUiOverlayStyle != null);
}
