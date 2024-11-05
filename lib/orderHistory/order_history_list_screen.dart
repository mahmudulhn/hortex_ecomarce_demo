import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hortex_ecomarce_demo/core/app_colors.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/orderHistory/order_history_item.dart';

class OrderHistoryListScreen extends StatelessWidget {
  const OrderHistoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50.w,
        leading: Container(
          margin: EdgeInsets.only(left: 20.w),
          height: 30.h,
          width: 30.w,
          child: Image.asset(AssetsPath.backIcon),
        ),
        flexibleSpace: Image(
          image: const AssetImage(AssetsPath.appbarBg),
          fit: BoxFit.cover,
          height: 150.h,
        ),
        title: Text(
          'Order History List',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: const Color(0XFFF4FCF3),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                const OrderHistoryItem(
                  status: 'Delivered',
                  orderId: '01KL789654',
                  orderDate: '12th June 2024',
                  price: 1620,
                  itemCount: 5,
                ),
                SizedBox(
                  height: 12.h,
                ),
                const OrderHistoryItem(
                  status: 'Pending',
                  deliveryDate: '(Delivery date 10th july 2020)',
                  orderId: '01KL789654',
                  orderDate: '12th June 2024',
                  price: 1620,
                  itemCount: 5,
                ),
                SizedBox(
                  height: 12.h,
                ),
                const OrderHistoryItem(
                  status: 'Processing',
                  deliveryDate: '(Delivery date 10th july 2020)',
                  orderId: '01KL789654',
                  orderDate: '12th June 2024',
                  price: 1620,
                  itemCount: 5,
                ),
                SizedBox(
                  height: 12.h,
                ),
                const OrderHistoryItem(
                  status: 'Canceled',
                  orderId: '01KL789654',
                  orderDate: '12th June 2024',
                  price: 1620,
                  itemCount: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
