import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.loginBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 62.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                child: Image.asset(
                  AssetsPath.loginLogo,
                  height: 56.h,
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 61.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 57.w),
                child: Image.asset(
                  AssetsPath.loginImage,
                  height: 294.h,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 67.w),
                child: Text(
                  'We’ll send you One Time Password on this number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetsPath.iphoneIcon,
                          height: 26.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Mobile Number',
                              hintStyle: TextStyle(
                                color: AppColors.hintTextColor,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Divider(
                      height: 1.h,
                      color: AppColors.primary,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: CommonButton(
                  title: 'Submit',
                  height: 48.h,
                  width: double.infinity,
                  onClick: () {},
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
