import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import '../core/app_colors.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    AssetsPath.personalInfoBg,
                    // height: 240.h,
                    // width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 152.h,
                    left: 130.w,
                    child: Image.asset(
                      height: 160.h,
                      width: 160.w,
                      AssetsPath.userImage,
                    ),
                  ),
                  Positioned(
                    top: 38.h,
                    // left: 20.w,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.h),
                          height: 30.h,
                          width: 30.w,
                          child: Image.asset(AssetsPath.backIcon),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'My Account',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 64.h),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: Image.asset(AssetsPath.iphoneIcon),
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                '01715 XXX XXX',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        Divider(height: 1.h, color: AppColors.borderGray),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: Image.asset(AssetsPath.emailIcon),
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                'abc@xyz.com',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        Divider(height: 1.h, color: AppColors.borderGray),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: Image.asset(AssetsPath.genderIcon),
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                'Gender : Male',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        Divider(height: 1.h, color: AppColors.borderGray),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
