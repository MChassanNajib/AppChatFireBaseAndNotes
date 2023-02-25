import 'package:flutter/widgets.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context, Size size) builder;

  const ResponsiveLayout({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return builder(
          context,
          Size(
            mediaQuery.size.width,
            mediaQuery.size.height,
          ),
        );
      },
    );
  }
}

class ScreenSize {
  static double? _width;
  static double? _height;
  static double? _topPadding;
  static double? _bottomPadding;
  static double? _textScaleFactor;

  static void init(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    _width = mediaQuery.size.width;
    _height = mediaQuery.size.height;
    _topPadding = mediaQuery.padding.top;
    _bottomPadding = mediaQuery.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
  }

  static double get width => _width ?? 0;

  static double get height => _height ?? 0;

  static double get topPadding => _topPadding ?? 0;

  static double get bottomPadding => _bottomPadding ?? 0;

  static double get textScaleFactor => _textScaleFactor ?? 1;
}
