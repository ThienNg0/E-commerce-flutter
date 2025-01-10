import 'package:ecommerce_app/core/configs/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/presentation/splash/pages/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme, // Accessing static property correctly
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}