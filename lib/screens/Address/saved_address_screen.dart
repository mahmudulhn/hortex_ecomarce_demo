import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/screens/Address/address_item.dart';

class SavedAddressScreen extends StatelessWidget {
  const SavedAddressScreen({super.key});

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
          fit: BoxFit.fill,
          height: 150.h,
        ),
        title: Text(
          'Saved Address',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
            color: AppColors.primary,
          ),
        ),
        actions: [
          Container(
            // color: AppColors.bgGray,
            margin: EdgeInsets.all(16.h),
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            const AddressItem(
              addressLabel: 'Home Address',
              address: 'House # 49. Road #12, Shekertek,',
              phone: '01715 XXX XXX',
              reasonArea: 'Mohammadpur, Dhaka.',
              isDefault: true,
            ),
            SizedBox(
              height: 7.h,
            ),
            const AddressItem(
              addressLabel: 'Office Address',
              address: 'House # 49. Road #12, Shekertek,',
              phone: '01715 XXX XXX',
              reasonArea: 'Mohammadpur, Dhaka.',
              isDefault: false,
            ),
            SizedBox(
              height: 7.h,
            ),
            const AddressItem(
              addressLabel: 'Home Address 2',
              address: 'House # 49. Road #12, Shekertek,',
              phone: '01715 XXX XXX',
              reasonArea: 'Mohammadpur, Dhaka.',
              isDefault: false,
            ),
            SizedBox(
              height: 7.h,
            ),
            const AddressItem(
              addressLabel: 'Office Address',
              address: 'House # 49. Road #12, Shekertek,',
              phone: '01715 XXX XXX',
              reasonArea: 'Mohammadpur, Dhaka.',
              isDefault: false,
            ),
          ],
        ),
      ),
    );
  }
}
