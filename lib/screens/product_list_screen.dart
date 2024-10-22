import 'package:flutter/material.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import '../../core/app_colors.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBar(
          leading: Image.asset(
            AssetsPath.backIcon,
            width: 30,
            height: 30,
          ),
          title: const Text(
            'Product List',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: AppColors.primary,
            ),
          ),
          flexibleSpace: Container(
            child: Stack(
              children: [
                Image.asset(
                  height: 150,
                  AssetsPath.productListBg,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(color: AppColors.borderGray),
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
        ),
      ),
    );
  }
}
