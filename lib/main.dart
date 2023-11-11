import 'package:flutter/material.dart';
import 'package:whats_app_clone/common/theme/dark_theme.dart';
import 'package:whats_app_clone/common/theme/light_theme.dart';
import 'package:whats_app_clone/feature/auth/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'What\'sApp',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
