import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';
import 'package:hortex_ecomarce_demo/screens/cart/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isHomeDelivery = true;
  // bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGray,
      appBar: AppBar(
        leadingWidth: 50.w,
        leading: Container(
          margin: EdgeInsets.only(left: 20.h),
          height: 30.h,
          width: 30.w,
          child: Image.asset(AssetsPath.backIcon),
        ),
        flexibleSpace: Image(
          image: const AssetImage(AssetsPath.appbarBg),
          fit: BoxFit.cover,
          height: 150.h,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Cart',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      color: AppColors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8.h,
                          ),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: 3,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => const CartItem(),
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 13.h),
                      color: AppColors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: '20% off',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' SD76TR',
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const TextSpan(text: ' Coupon Added'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 19.w,
                              ),
                              Image.asset(
                                AssetsPath.redXIcon,
                                height: 20.h,
                                width: 20.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Divider(
                            color: AppColors.borderGray,
                            height: 1.h,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 95.w, top: 9.h, bottom: 9.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Text('Sub Total'),
                                    Spacer(),
                                    Text('TK. 800'),
                                  ],
                                ),
                                Divider(
                                  color: AppColors.borderGray,
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 95.w, top: 9.h, bottom: 9.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Text('Delivery Charge'),
                                    Spacer(),
                                    Text('TK. 10'),
                                  ],
                                ),
                                Divider(
                                  color: AppColors.borderGray,
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 95.w, top: 9.h, bottom: 9.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Text('Grand Total'),
                                    Spacer(),
                                    Text('TK. 800'),
                                  ],
                                ),
                                Divider(
                                  color: AppColors.borderGray,
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 95.w, top: 9.h, bottom: 9.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Text('Sub Total'),
                                    Spacer(),
                                    Text('TK. 800'),
                                  ],
                                ),
                                Divider(
                                  color: AppColors.borderGray,
                                  height: 1.h,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: AppColors.borderGray,
                              width: 1.w,
                            )),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.none,
                                    decoration: InputDecoration(
                                      hintText: 'SDTY670K',
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 13.w),
                                      isDense: true,
                                      hintStyle: TextStyle(
                                        color: AppColors.hintTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                CommonButton(
                                  title: 'Apply Cupon',
                                  height: 40.h,
                                  width: 108.w,
                                  onClick: () {},
                                  borderRadius: false,
                                  isBold: false,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 22.h,
                      ),
                      color: AppColors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isHomeDelivery = true;
                                        });
                                      },
                                      child: Container(
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 30.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30.r),
                                                border: Border.all(
                                                  color: AppColors.primary,
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                            isHomeDelivery
                                                ? Container(
                                                    height: 12.h,
                                                    width: 12.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.r),
                                                      border: Border.all(
                                                        color:
                                                            AppColors.primary,
                                                        width: 1.w,
                                                      ),
                                                      color: AppColors.primary,
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      'Home delivery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isHomeDelivery = false;
                                        });
                                      },
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 30.h,
                                            width: 30.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.r),
                                              border: Border.all(
                                                color: AppColors.primary,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                          !isHomeDelivery
                                              ? Container(
                                                  height: 12.h,
                                                  width: 12.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.r),
                                                    border: Border.all(
                                                      color: AppColors.primary,
                                                      width: 1.w,
                                                    ),
                                                    color: AppColors.primary,
                                                  ),
                                                )
                                              : const SizedBox(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      'Pick Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          isHomeDelivery
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Delivery Details',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.primary),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          color: AppColors.primary,
                                          size: 10,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Home Address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'House # 49. Road #12, Shekertek,',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      'Mohammadpur, Dhaka.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    Text(
                                      '01715 XXX XXX',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(
                                  height: 24.h,
                                ),
                          SizedBox(
                            height: 24.h,
                          ),
                          CommonButton(
                            title: 'Place Order',
                            height: 48.h,
                            width: 390.w,
                            onClick: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.r),
                                      ),
                                    ),
                                    // contentPadding: EdgeInsets.symmetric(
                                    //     horizontal: 15.w, vertical: 30.h),
                                    backgroundColor: AppColors.cardBgColor,
                                    content: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w, vertical: 30.h),
                                      height: 243.h,
                                      width: 382.w,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Are You Sure?',
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors
                                                  .primary, // Text color
                                            ),
                                          ),
                                          Text(
                                            textAlign: TextAlign.center,
                                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  AppColors.black, // Text color
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Flexible(
                                                  flex: 1,
                                                  child: CommonButton(
                                                      title: 'Confirm',
                                                      height: 48.h,
                                                      width: 166.w,
                                                      onClick: () {
                                                        Navigator.pop(context);
                                                      }),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Flexible(
                                                  flex: 1,
                                                  child: CommonButton(
                                                    title: 'Cancel',
                                                    height: 48.h,
                                                    width: 166.w,
                                                    onClick: () {
                                                      Navigator.pop(context);
                                                    },
                                                    color: 0XFF989898,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
