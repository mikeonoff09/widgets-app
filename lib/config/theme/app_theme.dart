import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.green,
  Colors.pinkAccent,
  Colors.blueAccent,
  Colors.black54,
  Colors.greenAccent,
  Colors.deepOrangeAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected colors must be >= 0'),
        assert(selectedColor < colorList.length,
            'Selected colors must be < ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
