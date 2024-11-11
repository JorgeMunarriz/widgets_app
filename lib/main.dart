import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentation/screens/providers/theme_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp.router(
            routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
            theme: themeProvider.theme,
          );
        },
      ),
    );
  }
}
