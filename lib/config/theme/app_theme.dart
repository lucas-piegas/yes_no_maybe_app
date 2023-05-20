import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.grey,
  Colors.green,
  Colors.blueGrey,
  Colors.lightBlue,
  Colors.amber,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(
          selectedColor >= 0,
          'Colors must be greater or equal than zero',
        ),
        assert(
          selectedColor <= _colorThemes.length - 1,
          'Color must be less than ${_colorThemes.length}',
        );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
