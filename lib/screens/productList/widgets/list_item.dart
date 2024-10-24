import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/screens/home/widgets/cart_add_counter.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';
import 'package:hortex_ecomarce_demo/main.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isAddedToCart = true;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // height: 110,
      // width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderGray,
          width: 1,
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.borderGray,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              AssetsPath.listItemDummyImage,
              height: 60.h,
              width: 60.w,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hisagor AAm',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: AppColors.primary,
                ),
              ),
              Text(
                '1 Kg.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.hintTextColor,
                ),
              ),
              Text(
                '120.00 Tk',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          isAddedToCart
              ? CommonButton(
                  title: 'Add',
                  height: 40.h,
                  width: 55.w,
                  onClick: () {
                    setState(
                      () {
                        isAddedToCart = false;
                      },
                    );
                  },
                )
              : const AddCartCounter(),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    );
  }
}
