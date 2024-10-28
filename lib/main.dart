import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hortex_ecomarce_demo/screens/account_info_edit.dart';

import 'package:hortex_ecomarce_demo/screens/cart/cart_screen.dart';
import 'package:hortex_ecomarce_demo/screens/home/home_screen.dart';
import 'package:hortex_ecomarce_demo/screens/login_screen.dart';
import 'package:hortex_ecomarce_demo/screens/my_account.dart';
import 'package:hortex_ecomarce_demo/screens/otp_screen.dart';
import 'package:hortex_ecomarce_demo/screens/personal_info.dart';
import 'package:hortex_ecomarce_demo/screens/productList/product_list_screen.dart';
import 'package:hortex_ecomarce_demo/screens/signup_screen.dart';
import 'package:hortex_ecomarce_demo/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const AccountInfoEdit(),
          );
        });
  }
}
