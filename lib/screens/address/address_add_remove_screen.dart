import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hortex_ecomarce_demo/core/app_colors.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';

class AddressAddRemoveScreen extends StatefulWidget {
  const AddressAddRemoveScreen({super.key});

  @override
  State<AddressAddRemoveScreen> createState() => _AddressAddRemoveScreenState();
}

class _AddressAddRemoveScreenState extends State<AddressAddRemoveScreen> {
  bool isDefault = true;

  final TextEditingController nameController =
      TextEditingController(text: 'Tariqul Islam');
  final TextEditingController phoneController =
      TextEditingController(text: '01715 XXX XXX');
  final TextEditingController addressController = TextEditingController(
      text:
          'Lorem Ipsum is simply dummy text of the lore printing and typesetting industry');
  final TextEditingController labelController =
      TextEditingController(text: 'Home');

  final List<String> regions = ['Dhaka', 'Chittagong', 'Khulna', 'Sylhet'];
  String? selectedRegion = 'Dhaka';

  final List<String> areas = [
    'Mohammadpur',
    'Uttare',
    'Firmgate',
  ];
  String? selectedAreas = 'Mohammadpur';

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
          'Address Add/Edit',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: AppColors.primary),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height - 90.h,
          color: const Color(0XFFF4FCF3),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: AppColors.hintTextColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextField(
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Divider(
                          color: AppColors.borderGray,
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            color: AppColors.hintTextColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Divider(
                          color: AppColors.borderGray,
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Region',
                          style: TextStyle(
                            color: AppColors.hintTextColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        DropdownButtonFormField<String>(
                          value: selectedRegion,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedRegion = newValue;
                            });
                          },
                          items: regions
                              .map<DropdownMenuItem<String>>((String region) {
                            return DropdownMenuItem<String>(
                              value: region,
                              child: Text(
                                region,
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: const InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.primary,
                          ),
                          dropdownColor: Colors.white,
                        ),
                        Divider(
                          color: AppColors.borderGray,
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Area',
                          style: TextStyle(
                            color: AppColors.hintTextColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        DropdownButtonFormField<String>(
                          value: selectedAreas,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedAreas = newValue;
                            });
                          },
                          items: areas
                              .map<DropdownMenuItem<String>>((String area) {
                            return DropdownMenuItem<String>(
                              value: area,
                              child: Text(
                                area,
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            );
                          }).toList(),
                          decoration: const InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.primary,
                          ),
                          dropdownColor: Colors.white,
                        ),
                        Divider(
                          color: AppColors.borderGray,
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                            color: AppColors.hintTextColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextField(
                          maxLines: 2,
                          controller: addressController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Divider(
                          color: AppColors.borderGray,
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Label',
                          style: TextStyle(
                            color: AppColors.hintTextColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextField(
                          controller: labelController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Divider(
                          color: AppColors.borderGray,
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 22.h,
                        width: 22.w,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            border: Border.all(
                                width: 1.w, color: AppColors.primary),
                            color: AppColors.white,
                          ),
                          child: Checkbox(
                            value: isDefault,
                            onChanged: (value) {
                              setState(() {
                                isDefault = !isDefault;
                              });
                            },
                            activeColor: Colors.transparent,
                            checkColor: AppColors.primary,
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13.w,
                      ),
                      Text(
                        'Save As Default Address',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.hintTextColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              CommonButton(
                title: 'Save',
                height: 47.h,
                width: double.infinity,
                onClick: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
