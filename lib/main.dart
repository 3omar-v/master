import 'package:app_om/details.dart';
import 'package:app_om/home/cart.dart';
import 'package:app_om/home/home.dart';
import 'package:app_om/onboard/onboard.dart';
import 'package:app_om/onboard/second.dart';
import 'package:app_om/onboard/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      routes: 
      {
        'onboard': (context)=> Onboard(),
        // 'om': (context)=> om(),
        // 'ar': (context)=> ar(),
        'details': (context)=> details(),
      },
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}
  