import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../core/common_widget/common_button.dart';

class AddCartCounter extends StatefulWidget {
  const AddCartCounter({super.key});

  @override
  State<AddCartCounter> createState() => _AddCartCounterState();
}

class _AddCartCounterState extends State<AddCartCounter> {
  int counter = 1;
  bool isCounterZero = false;

  @override
  Widget build(context) {
    return isCounterZero
        ? CommonButton(
            title: 'Add',
            height: 40.h,
            width: 55.w,
            onClick: () {
              setState(
                () {
                  isCounterZero = false;
                  counter = 1;
                },
              );
            },
          )
        : Container(
            height: 40.h,
            width: 105.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(
                color: AppColors.primary,
                width: 1.w,
              ),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      counter--;

                      if (counter == 0) {
                        isCounterZero = true;
                      }
                    });
                  },
                  child: SizedBox(
                    height: 40.h,
                    width: 33.w,
                    child: const Icon(
                      Icons.remove,
                      color: AppColors.borderGray,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 1.w,
                  color: AppColors.primary,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '$counter',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Container(
                    height: 40.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.r),
                        bottomRight: Radius.circular(4.r),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
