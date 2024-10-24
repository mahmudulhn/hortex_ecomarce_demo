import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.title,
    required this.bgColor,
    required this.icon,
  });

  final String title;
  final int bgColor;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(30.h),
          height: 116.h,
          width: 116.w,
          decoration: BoxDecoration(
            color: Color(bgColor),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Image.asset(icon),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
