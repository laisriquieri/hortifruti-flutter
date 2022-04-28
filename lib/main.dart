
import 'package:app_comerce/src/pages/auth/sing_in_screen.dart';
import 'package:app_comerce/src/pages/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_comerce/src/config/custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Varejão',
      theme: ThemeData(
        primarySwatch: CustomColors.customSwatchColor,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen(),
    );
  }
}

