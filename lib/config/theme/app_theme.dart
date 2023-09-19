import 'package:flutter/material.dart';

const colorList = Colors.primaries;

// const colorList = <Color>[
//   Colors.green,
//   Colors.pinkAccent,
//   Colors.blueAccent,
//   Colors.black54,
//   Colors.greenAccent,
//   Colors.deepOrangeAccent,
// ];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, 'Selected colors must be >= 0'),
        assert(selectedColor < colorList.length,
            'Selected colors must be < ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
