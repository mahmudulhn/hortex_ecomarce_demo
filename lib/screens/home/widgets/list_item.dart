import 'package:flutter/material.dart';
import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';

import '../../productList/widgets/cart_app_counter.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 80,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: AppColors.borderGray),
                ),
                child: Image.asset(AssetsPath.listItemDummyImage),
              ),
              const SizedBox(
                width: 12,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    '3.99 Tk',
                    style: TextStyle(
                      fontSize: 14,
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
                        margin: const EdgeInsets.all(16),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            height: 1,
            color: AppColors.borderGray,
          ),
        ],
      ),
    );
  }
}
