import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.title,
    required this.height,
    required this.width,
    required this.onClick,
    this.color,
  });

  final String title;
  final double height;
  final double width;
  final void Function() onClick;

  final int? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color == null ? AppColors.primary : Color(color!),
          borderRadius: BorderRadius.circular(4.r),
        ),
        height: height,
        width: width,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
