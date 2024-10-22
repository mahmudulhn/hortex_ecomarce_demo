import 'package:flutter/material.dart';
import 'package:hortex_ecomarce_demo/screens/home/home_screen.dart';
import 'package:hortex_ecomarce_demo/screens/login_screen.dart';
import 'package:hortex_ecomarce_demo/screens/otp_screen.dart';
import 'package:hortex_ecomarce_demo/screens/product_list_screen.dart';
import 'package:hortex_ecomarce_demo/screens/signup_screen.dart';

import 'package:hortex_ecomarce_demo/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductListScreen(),
    );
  }
}
