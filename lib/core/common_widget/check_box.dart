import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hortex_ecomarce_demo/core/app_colors.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(
              color: AppColors.primary,
              width: 1,
            ),
          ),
        ),
        Container(
          height: 15.h,
          width: 15.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: AppColors.primary,
              width: 1,
            ),
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
