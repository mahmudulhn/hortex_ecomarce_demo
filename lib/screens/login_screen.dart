import 'package:flutter/material.dart';

import 'package:hortex_ecomarce_demo/core/app_colors.dart';
import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.loginBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 62,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Image.asset(
                  AssetsPath.loginLogo,
                  height: 56,
                  // fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 61,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 57),
                child: Image.asset(
                  AssetsPath.loginImage,
                  height: 294,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 67),
                child: Text(
                  'We’ll send you One Time Password on this number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 49),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetsPath.iphoneIcon,
                          height: 26,
                          width: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Mobile Number',
                              hintStyle: TextStyle(
                                color: AppColors.textColor,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    const Divider(
                      height: 1,
                      color: AppColors.primary,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 49),
                child: CommonButton(
                  title: 'Submit',
                  height: 48,
                  width: double.infinity,
                  onClick: () {},
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
