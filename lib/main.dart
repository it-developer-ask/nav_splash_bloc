import 'package:nav_splash_bloc/utils/app_constants.dart';
import 'presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const BottomNavSplashApp(),
  );
}

class BottomNavSplashApp extends StatelessWidget {
  const BottomNavSplashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const ScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
      ),
      title: AppTexts.appTitle,
      debugShowCheckedModeBanner: false,
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1.0),
        ),
        child: const AppSplashScreen(),
      ),
    );
  }
}
