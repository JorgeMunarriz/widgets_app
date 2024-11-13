import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => true);

final colorListProvider = Provider((ref) => colorList);



final selectedcolorListProvider = StateProvider((ref) => 0);