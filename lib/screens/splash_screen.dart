import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 68.w),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsPath.splashImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Image.asset(
          AssetsPath.splashIcon,
          height: 94.h,
          width: double.infinity,
        ),
      ),

      // body: Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     SizedBox(
      //       height: MediaQuery.of(context).size.height,
      //       width: MediaQuery.of(context).size.width,
      //       child: Image.asset(AssetsPath.splashImage, fit: BoxFit.cover,),
      //     ),
      //     Container(
      //       margin: const EdgeInsets.symmetric(horizontal: 68),
      //         height: 94,
      //         width: double.infinity,
      //       child: Image.asset(AssetsPath.splashIcon,),
      //     )
      //   ],
      // ),
    );
  }
}
