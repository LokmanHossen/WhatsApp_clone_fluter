import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whats_app_clone/common/routes/routes.dart';
import 'package:whats_app_clone/common/theme/dark_theme.dart';
import 'package:whats_app_clone/common/theme/light_theme.dart';
import 'package:whats_app_clone/feature/auth/controller/auth_controller.dart';
import 'package:whats_app_clone/feature/home/pages/home_page.dart';
import 'package:whats_app_clone/feature/welcome/pages/welcome_page.dart';
import 'package:whats_app_clone/firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp me',
      theme: lightTheme(), 
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: ref.watch(userInfoAuthProvider).when(
            data: (user) {
              FlutterNativeSplash.remove();
              if (user == null) return const WelcomePage();
              return const HomePage();
            },
            error: (error, trace) {
              return const Scaffold(
                body: Center(
                  child: Text('Something wrong happened'),
                ),
              );
            },
            loading: () => const SizedBox(),
          ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
