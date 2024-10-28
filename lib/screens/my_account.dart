import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';

import '../core/app_colors.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50.w,
        leading: Container(
          margin: EdgeInsets.only(left: 20.h),
          height: 30.h,
          width: 30.w,
          child: Image.asset(AssetsPath.backIcon),
        ),
        flexibleSpace: Image(
          image: const AssetImage(AssetsPath.appbarBg),
          fit: BoxFit.cover,
          height: 150.h,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
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
                          child: Image.asset(AssetsPath.userIcon),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          'Personal Info',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: 15,
                        ),
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
                          child: Image.asset(AssetsPath.saveAdderssIcon),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          'Saved Addres',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: 15,
                        ),
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
                          child: Image.asset(AssetsPath.orderHistoryIcon),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          'Order History',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: 15,
                        ),
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
                          child: Image.asset(AssetsPath.referAFriendIcon),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          'Refer A Friend',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: 15,
                        ),
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
                          child: Image.asset(AssetsPath.redLogoutIcon),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.primary,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1.h, color: AppColors.borderGray),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
