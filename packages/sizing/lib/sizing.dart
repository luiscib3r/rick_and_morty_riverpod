library sizing;

import 'dart:math';

import 'package:flutter/widgets.dart';
export 'sizing_builder.dart';
export 'sizing_extension.dart';

class Sizing {
  factory Sizing() {
    return _instance;
  }

  Sizing._();

  static const Size _defaultScreenSize = Size(360, 640);
  static late Sizing _instance;

  Size _baseSize = _defaultScreenSize;
  Size _screenSize = _defaultScreenSize;
  bool _systemFontScale = false;

  final double _factor = 0.5;
  late double _textScaleFactor;

  static Sizing get instance {
    return _instance;
  }

  static void init(
    BoxConstraints constraints, {
    bool systemFontScale = false,
    Size baseSize = _defaultScreenSize,
  }) {
    _instance = Sizing._();

    if (constraints.maxWidth < constraints.maxHeight) {
      _instance._screenSize = Size(constraints.maxWidth, constraints.maxHeight);
    } else {
      _instance._screenSize = Size(constraints.maxHeight, constraints.maxWidth);
    }

    _instance._systemFontScale = systemFontScale;
    _instance._baseSize = baseSize;

    final window = WidgetsBinding.instance.window;

    _instance._textScaleFactor = window.textScaleFactor;
  }

  double scale(num size) {
    return Sizing.instance._screenSize.width /
        Sizing.instance._baseSize.width *
        size;
  }

  double verticalScale(num size) {
    return Sizing.instance._screenSize.height /
        Sizing.instance._baseSize.height *
        size;
  }

  double smartScale(num size) {
    return size + (scale(size) - size) * _factor;
  }

  double fontScale(num size) {
    if (_systemFontScale) {
      return min(scale(1), verticalScale(1)) * size * _textScaleFactor;
    }
    return min(scale(1), verticalScale(1)) * size / _textScaleFactor;
  }

  double fontSmartScale(num size) {
    if (_systemFontScale) {
      return smartScale(size) * _textScaleFactor;
    }
    return smartScale(size) / _textScaleFactor;
  }

  double screenWidth(num size) {
    return _screenSize.width * size;
  }

  double screenHeight(num size) {
    return _screenSize.height * size;
  }

  double selfFontScale(
    num size, {
    bool allow = false,
  }) {
    if (!_systemFontScale && allow) {
      return size * _textScaleFactor;
    } else if (_systemFontScale && !allow) {
      return size / _textScaleFactor;
    }
    return size.toDouble();
  }

  double differentFactor(
    num size, [
    double factor = 0.5,
  ]) {
    return (size / _factor) * factor;
  }
}
