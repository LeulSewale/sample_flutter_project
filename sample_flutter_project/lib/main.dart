import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX library
import 'package:sample_flutter_project/Views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Bellboy ridre',
      home: SplashScreen(),
    );
  }
}
