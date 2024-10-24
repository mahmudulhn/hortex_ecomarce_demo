import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';
import 'package:hortex_ecomarce_demo/screens/productList/widgets/cart_app_counter.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isAddedToCart = false;

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      // height: 110,
      // width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderGray,
          width: 1.w,
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10.h),
            padding: EdgeInsets.all(11.h),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.borderGray,
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(8.r),
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
              ? const AddCartCounter()
              : CommonButton(
                  title: 'Add',
                  height: 40.h,
                  width: 55.w,
                  onClick: () {
                    setState(
                      () {
                        isAddedToCart = true;
                      },
                    );
                  },
                ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    );
  }
}
