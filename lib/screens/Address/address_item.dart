import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import '../../core/app_colors.dart';

class AddressItem extends StatelessWidget {
  const AddressItem(
      {super.key,
      required this.addressLabel,
      required this.address,
      required this.phone,
      required this.reasonArea,
      required this.isDefault});

  final bool isDefault;
  final String addressLabel;
  final String address;
  final String phone;
  final String reasonArea;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Text(
                  addressLabel,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: AppColors.primary,
                  ),
                ),
                const Spacer(),
                isDefault
                    ? Text(
                        'Default',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    : Text(
                        'Make This Default',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.black,
                        ),
                      ),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    reasonArea,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              isDefault
                  ? const SizedBox()
                  : Container(
                      height: 30.h,
                      width: 30.w,
                      child: Image.asset(AssetsPath.deleteIcon),
                    ),
            ],
          ),
          Row(
            children: [
              Text(
                phone,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              Image.asset(
                AssetsPath.editIcon,
                height: 16.h,
                width: 16.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}
