import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';

import '../core/app_colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.loginBackground,
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Image.asset(
                      AssetsPath.backIcon,
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Image.asset(
                  AssetsPath.otpBg,
                  height: 349.h,
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 68.w),
                child: Text(
                  textAlign: TextAlign.center,
                  'OTP VERIFICATION',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text(
                  textAlign: TextAlign.center,
                  'Enter the OTP sent to 01715 XXX XXX',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                      color: AppColors.black),
                ),
              ),
              const TextField(),
              SizedBox(
                height: 47.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: CommonButton(
                  title: 'Verify & Continue',
                  height: 48.h,
                  width: double.infinity,
                  onClick: () {},
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: SizedBox(
                  height: 47.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t Receive OTP?',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'RESEND',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
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
