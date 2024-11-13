import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_dark_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // bool isDarkMode = ref.watch(isDarkModeProvider);
    // int selectedColor = ref.watch(selectedcolorListProvider);
    // Color? customColor;
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    // if (selectedColor >= colorList.length) {
    //   customColor = Color(selectedColor);
    // }

    return MaterialApp.router(
      title: 'Flutter widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
