import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screen/SplashScreen.dart';
import 'package:flutter_shopping_app/screen/login_screen.dart';
import 'package:flutter_shopping_app/screen/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: NavigationScreen(),
    );
  }
}
