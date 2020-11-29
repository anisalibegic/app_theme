import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
abstract class BaseAppThemeData {
  final Color accentColor;
  final Color primaryColor;
  final String fontFamily;
  final Brightness brightness;
  final MaterialColor swatch;
  final SystemUiOverlayStyle systemUiOverlayStyle;

  const BaseAppThemeData({
    this.accentColor,
    this.primaryColor,
    this.swatch,
    this.brightness,
    this.fontFamily,
    this.systemUiOverlayStyle,
  });
}
