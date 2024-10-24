import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/screens/home/widgets/category_grid_item.dart';
import 'package:hortex_ecomarce_demo/screens/home/widgets/list_item.dart';
import '../../core/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50.w,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30.r),
          child: Container(
            margin: EdgeInsets.only(left: 20.h),
            height: 30.h,
            width: 30.r,
            child: Image.asset(AssetsPath.userIcon),
          ),
        ),
        flexibleSpace: const Image(
          image: AssetImage(AssetsPath.appbarBg),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 30.h,
                width: 30.w,
                child: Image.asset(AssetsPath.cartIcon),
              ),
              Positioned(
                top: -5,
                right: -5,
                child: Container(
                  alignment: Alignment.center,
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.white,
                  ),
                  child: Text(
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    '5',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.white,
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 19.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColors.borderGray, width: 1.w),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.r),
                        child: Image.asset(
                          AssetsPath.searchIcon,
                          height: 30.h,
                          width: 30.w,
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
              ),
              SizedBox(
                height: 17.h,
              ),
              categoryGridItem(context),
              SizedBox(
                height: 34.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: AppColors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              ListView.builder(
                itemBuilder: (context, index) => const ListItem(),
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryGridItem(BuildContext context) {
    var crossAxisSpacing = 1;
    var screenWidth = MediaQuery.of(context).size.width;
    var crossAxisCount = 3;
    var width = (screenWidth - ((crossAxisCount - 1) * crossAxisSpacing)) /
        crossAxisCount;
    var cellHeight = 142;
    var aspectRatio = width / cellHeight;

    return Container(
        padding: EdgeInsets.all(15.h),
        child: GridView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return const CategoryGridItem(
                title: 'Vegetables',
                bgColor: 0XFFE7FFE6,
                icon: AssetsPath.gridItemDummyIcon);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: aspectRatio,
              crossAxisSpacing: 15,
              mainAxisSpacing: 12,
              mainAxisExtent: 142),
        ));
  }
}
