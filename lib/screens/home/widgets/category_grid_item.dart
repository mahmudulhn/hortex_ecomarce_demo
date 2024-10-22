import 'package:flutter/material.dart';
import 'package:hortex_ecomarce_demo/core/app_colors.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.icon});

  final String title;
  final int bgColor;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          height: 116,
          width: 116,
          decoration: BoxDecoration(
            color: Color(bgColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(icon),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
