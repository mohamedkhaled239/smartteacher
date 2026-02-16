import 'package:flutter/material.dart';
import 'features/auth/presentation/pages/splash_page.dart';
import 'core/constants/global_keys.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مساعد المعلم الذكي',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2196F3)),
        useMaterial3: true,
        fontFamily: 'Cairo',
      ),

      navigatorKey: navigatorKey,
      // Entry point: Splash Page checks login state
      home: const SplashPage(),
    );
  }
}
