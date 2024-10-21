import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/assets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppColors.loginBackground,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Image.asset(
                      AssetsPath.backIcon,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 106.5),
                child: Image.asset(
                  AssetsPath.signupBg,
                  height: 283,
                ),
              ),
              const SizedBox(
                height: 47,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 67.5),
                child: Text(
                  'Complete Your Registration',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(color: AppColors.primary),
                ),
                child: Row(
                  children: [
                    Image.asset(AssetsPath.userIcon),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Your Name',
                            hintStyle: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
