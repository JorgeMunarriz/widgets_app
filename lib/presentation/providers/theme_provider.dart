import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  int _selectedColor = 0;
  bool _isDarkMode = false;

  int get selectedColor => _selectedColor;
  bool get isDarkMode => _isDarkMode;

  ThemeData get theme =>
      AppTheme(selectedColor: _selectedColor, isDarkMode: _isDarkMode)
          .getTheme();

  void changeColor() {
    _selectedColor = (_selectedColor + 1) % colorList.length;
    notifyListeners();
  }

  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
