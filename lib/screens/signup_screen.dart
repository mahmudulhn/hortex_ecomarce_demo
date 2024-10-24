import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_colors.dart';
import '../core/assets.dart';
import '../core/common_widget/common_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 106.5.w),
                child: Image.asset(
                  AssetsPath.signupBg,
                  height: 283.h,
                ),
              ),
              SizedBox(
                height: 47.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 67.5.w),
                child: Text(
                  'Complete Your Registration',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(1.r),
                    border: Border.all(color: AppColors.primary),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.h),
                        child: Image.asset(
                          AssetsPath.userIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(13.h),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              hintStyle: TextStyle(
                                color: AppColors.hintTextColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(1.r),
                    border: Border.all(color: AppColors.primary),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.h),
                        child: Image.asset(
                          AssetsPath.emailIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(13.h),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              hintStyle: TextStyle(
                                color: AppColors.hintTextColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(1.r),
                    border: Border.all(color: AppColors.primary),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.h),
                        child: Image.asset(
                          AssetsPath.shareIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(13.h),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'Refarrel Code',
                              hintStyle: TextStyle(
                                color: AppColors.hintTextColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 47.w),
                child: Row(
                  children: [
                    SizedBox(
                      height: 22.h,
                      width: 22.w,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        activeColor: AppColors.primary,
                        checkColor: AppColors.white,
                        side: const BorderSide(color: AppColors.primary),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    Expanded(
                      child: Text(
                        'I Agree to Terms of use and PrivacyPolicy',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 49.w),
                child: CommonButton(
                  title: 'Signup & Continue',
                  height: 48.h,
                  width: double.infinity,
                  onClick: () {},
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
