import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whats_app_clone/common/routes/routes.dart';
import 'package:whats_app_clone/common/theme/dark_theme.dart';
import 'package:whats_app_clone/common/theme/light_theme.dart';
import 'package:whats_app_clone/feature/welcome/pages/welcome_page.dart';
import 'package:whats_app_clone/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
      // home: const LoginPage(),
      // home:  VerificationPage(),
      // home: const UserInfoPage(),
      home: const WelcomePage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
