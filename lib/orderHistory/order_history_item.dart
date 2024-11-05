import 'package:flutter/material.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_colors.dart';

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem(
      {super.key,
      required this.status,
      this.deliveryDate,
      required this.orderId,
      required this.orderDate,
      required this.price,
      required this.itemCount});

  final String status;
  final String? deliveryDate;
  final String orderId;
  final String orderDate;
  final double price;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: status,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: status == 'Delivered'
                    ? AppColors.primary
                    : status == 'Pending'
                        ? const Color(0XFF17BBD2)
                        : status == 'Processing'
                            ? const Color(0XFFD29217)
                            : const Color(0XFFFF0000),
              ),
              children: deliveryDate != null
                  ? <TextSpan>[
                      TextSpan(
                        text: '  $deliveryDate',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                    ]
                  : null,
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order : $orderId',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    orderDate,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    'TK.$price / $itemCount Item(s)',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  deliveryDate != null
                      ? Container(
                          alignment: Alignment.center,
                          // padding: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 28.h,
                          width: 91.w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(
                                color: const Color(0XFFE96A3D), width: 1.h),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Text(
                            'Track Order',
                            style: TextStyle(
                              color: const Color(0XFFE96A3D),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      : const SizedBox(),
                  SizedBox(
                    height: 4.h,
                  ),
                  status == 'Pending'
                      ? Container(
                          alignment: Alignment.center,
                          // padding: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 28.h,
                          width: 91.w,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(
                                color: const Color(0XFFFF0000), width: 1.h),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Text(
                            'Cancel Order',
                            style: TextStyle(
                              color: const Color(0XFFFF0000),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
