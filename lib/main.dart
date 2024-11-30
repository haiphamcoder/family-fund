import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FamilyFundApp());
}

class FamilyFundApp extends StatelessWidget {
  const FamilyFundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
