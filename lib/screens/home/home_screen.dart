import 'package:flutter/material.dart';

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
        leadingWidth: 50,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            height: 30,
            width: 30,
            child: Image.asset(AssetsPath.userIcon),
          ),
        ),
        flexibleSpace: const Image(
          image: AssetImage(AssetsPath.appbarBg),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(AssetsPath.cartIcon),
              ),
              Positioned(
                top: -5,
                right: -5,
                child: Container(
                  alignment: Alignment.center,
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.white,
                  ),
                  child: const Text(
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    '5',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.borderGray, width: 1),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          AssetsPath.searchIcon,
                          height: 30,
                          width: 30,
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.none,
                          decoration: InputDecoration(
                            hintText: 'Search For Item',
                            hintStyle: TextStyle(
                              color: AppColors.hintTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              categoryGridItem(context),
              const SizedBox(
                height: 34,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: const Text(
                  'Recommended',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
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
        padding: const EdgeInsets.all(15),
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
