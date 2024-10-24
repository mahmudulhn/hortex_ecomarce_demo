import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';
import 'package:hortex_ecomarce_demo/screens/productList/widgets/list_item.dart';
import '../../../core/app_colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<String> categories = [
    'All',
    'Vegetables',
    'Fruits',
    'Processed Food',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset(
      //     AssetsPath.backIcon,
      //     width: 30,
      //     height: 30,
      //   ),
      //   title: const Text(
      //     'Product List',
      //     style: TextStyle(
      //       fontWeight: FontWeight.w600,
      //       fontSize: 18,
      //       color: AppColors.primary,
      //     ),
      //   ),
      //   flexibleSpace: Image.asset(
      //     AssetsPath.appbarBg,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: AppColors.bgGray),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 150.h,
                  width: double.infinity,
                  child: Image.asset(
                    AssetsPath.productListBg,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.r),
                            child: Container(
                              alignment: Alignment.topLeft,
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset(AssetsPath.backIcon),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Product List',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 48.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              color: AppColors.borderGray, width: 1.w),
                          color: AppColors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.h),
                              child: Image.asset(
                                AssetsPath.searchIcon,
                                height: 30.h,
                                width: 30.r,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.none,
                                decoration: InputDecoration(
                                  hintText: 'Search For Item',
                                  isDense: true,
                                  hintStyle: TextStyle(
                                    color: AppColors.hintTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              height: 28.h,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: index == selectedIndex
                                ? BorderSide(
                                    color: AppColors.primary, width: 3.w)
                                : BorderSide(
                                    color: Colors.transparent, width: 3.w),
                          )),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: index == selectedIndex
                                  ? AppColors.primary
                                  : AppColors.hintTextColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                    ],
                  );
                },
              ),
            ),
            Divider(
              height: 0.5.h,
              color: AppColors.borderGray,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 14.h),
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ListItem(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 70.h,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 55.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: const Color(0XFF10683B),
                    ),
                    child: Text(
                      '05',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  CommonButton(
                    title: 'View Cart',
                    height: 40.h,
                    width: 107.w,
                    onClick: () {},
                    color: 0XFF10683B,
                  ),
                  const Spacer(),
                  Image.asset(
                    AssetsPath.takaIcon,
                    height: 14.h,
                  ),
                  Text(
                    '1450.00',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
