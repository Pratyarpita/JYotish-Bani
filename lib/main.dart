import 'package:astrology_app/astropage/bottom_nav_bar/bottom.dart';
import 'package:astrology_app/astropage/splash/splas_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(primarySwatch: Colors.blue),
        home: CustomBottomNavigationBar());
  }
}
