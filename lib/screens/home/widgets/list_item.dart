import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/screens/home/widgets/cart_add_counter.dart';

class ListItem extends StatefulWidget {
  const ListItem({
    super.key,
    // required this.title,
    // required this.price,
    // required this.image,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isAddedToCart = false;
  // final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                height: 80.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(width: 1.w, color: AppColors.borderGray),
                ),
                child: Image.asset(AssetsPath.listItemDummyImage),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    '3.99 Tk',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              isAddedToCart
                  ? const AddCartCounter()
                  : InkWell(
                      onTap: () {
                        setState(() {
                          isAddedToCart = true;
                        });
                      },
                      child: Container(
                        // color: AppColors.bgGray,
                        margin: EdgeInsets.all(16.h),
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(
            height: 1.h,
            color: AppColors.borderGray,
          ),
        ],
      ),
    );
  }
}
