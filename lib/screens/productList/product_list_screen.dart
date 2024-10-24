import 'package:flutter/material.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';
import 'package:hortex_ecomarce_demo/screens/productList/widgets/list_item.dart';
import '../../../core/app_colors.dart';

class ProductListScreen extends StatefulWidget {
  ProductListScreen({super.key});

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
                  height: 150,
                  width: double.infinity,
                  child: Image.asset(
                    AssetsPath.productListBg,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              alignment: Alignment.topLeft,
                              height: 30,
                              width: 30,
                              child: Image.asset(AssetsPath.backIcon),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Product List',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: AppColors.borderGray, width: 1),
                          color: AppColors.white,
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
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              height: 28,
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
                                ? const BorderSide(
                                    color: AppColors.primary, width: 3)
                                : const BorderSide(
                                    color: Colors.transparent, width: 3),
                          )),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: index == selectedIndex
                                  ? AppColors.primary
                                  : AppColors.hintTextColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(
              height: 0.5,
              color: AppColors.borderGray,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 14),
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ListItem(),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0XFF10683B),
                    ),
                    child: const Text(
                      '05',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  CommonButton(
                    title: 'View Cart',
                    height: 40,
                    width: 107,
                    onClick: () {},
                    color: 0XFF10683B,
                  ),
                  const Spacer(),
                  Image.asset(
                    AssetsPath.takaIcon,
                    height: 14,
                  ),
                  const Text(
                    '1450.00',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
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
