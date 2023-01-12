import 'package:flutter/material.dart';
import 'package:shopping_app_v3/splash_screen.dart';


void main() {
  runApp( ShoppingApp());
}

class ShoppingApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
