import 'package:flutter/material.dart';

import 'package:hortex_ecomarce_demo/core/assets.dart';
import 'package:hortex_ecomarce_demo/core/common_widget/common_button.dart';

import '../core/app_colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(
                  AssetsPath.otpBg,
                  height: 349,
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 68),
                child: Text(
                  textAlign: TextAlign.center,
                  'OTP VERIFICATION',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  textAlign: TextAlign.center,
                  'Enter the OTP sent to 01715 XXX XXX',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.black),
                ),
              ),
              const TextField(),
              const SizedBox(
                height: 47,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 49),
                child: CommonButton(
                  title: 'Verify & Continue',
                  height: 48,
                  width: double.infinity,
                  onClick: () {},
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 47,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t Receive OTP?',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'RESEND',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
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
