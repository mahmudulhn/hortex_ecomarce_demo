import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';

import '../core/assets.dart';

class AccountInfoEdit extends StatefulWidget {
  const AccountInfoEdit({super.key});

  @override
  State<AccountInfoEdit> createState() => _AccountInfoEditState();
}

class _AccountInfoEditState extends State<AccountInfoEdit> {
  final TextEditingController nameController =
      TextEditingController(text: 'Tariqul Islam');
  final TextEditingController phoneController =
      TextEditingController(text: '01715 XXX XXX');
  final TextEditingController emailController =
      TextEditingController(text: 'abc@xya.com');
  bool isMale = true;

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
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 34.h),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 140.h,
                        width: 140.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(140.r),
                          border: Border.all(
                            color: AppColors.primary,
                            width: 1,
                          ),
                        ),
                      ),
                      Container(
                        height: 60.h,
                        width: 60.w,
                        child: Image.asset(AssetsPath.profilePic),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 28.w,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0XFFF5F5F5),
                          borderRadius: BorderRadius.circular(1.r),
                          border: Border.all(
                            color: const Color(0XFFECECEC),
                            width: 1.w,
                          ),
                        ),
                      ),
                      Container(
                        height: 24.h,
                        width: 24.w,
                        child: Image.asset(AssetsPath.ImageIcon),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 41.h,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 30.w,
                        child: Image.asset(
                          AssetsPath.userIcon,
                          // alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 24.w,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  color: AppColors.hintTextColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextField(
                                controller: nameController,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Divider(
                                color: AppColors.borderGray,
                                height: 1.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 30.w,
                        child: Image.asset(
                          AssetsPath.iphoneIcon,
                          // alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 24.w,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone',
                                style: TextStyle(
                                  color: AppColors.hintTextColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextField(
                                controller: phoneController,
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.done,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Divider(
                                color: AppColors.borderGray,
                                height: 1.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 30.w,
                        child: Image.asset(
                          AssetsPath.emailIcon,
                          // alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 24.w,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  color: AppColors.hintTextColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.done,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Divider(
                                color: AppColors.borderGray,
                                height: 1.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 30.w,
                        child: Image.asset(
                          AssetsPath.genderIcon,
                          // alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 24.w,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gender',
                                style: TextStyle(
                                  color: AppColors.hintTextColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                isMale = true;
                                              });
                                            },
                                            child: Container(
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Container(
                                                    height: 20.h,
                                                    width: 20.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r),
                                                      border: Border.all(
                                                        color:
                                                            AppColors.primary,
                                                        width: 1,
                                                      ),
                                                    ),
                                                  ),
                                                  isMale
                                                      ? Container(
                                                          height: 12.h,
                                                          width: 12.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.r),
                                                            border: Border.all(
                                                              color: AppColors
                                                                  .primary,
                                                              width: 1.w,
                                                            ),
                                                            color: AppColors
                                                                .primary,
                                                          ),
                                                        )
                                                      : const SizedBox(),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            'Male',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                isMale = false;
                                              });
                                            },
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  height: 20.h,
                                                  width: 20.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.r),
                                                    border: Border.all(
                                                      color: AppColors.primary,
                                                      width: 1,
                                                    ),
                                                  ),
                                                ),
                                                !isMale
                                                    ? Container(
                                                        height: 12.h,
                                                        width: 12.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.r),
                                                          border: Border.all(
                                                            color: AppColors
                                                                .primary,
                                                            width: 1.w,
                                                          ),
                                                          color:
                                                              AppColors.primary,
                                                        ),
                                                      )
                                                    : const SizedBox(),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            'Female',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: AppColors.borderGray,
                                height: 1.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
