import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 48.h),
          children: [
            Text(
              AppStrings.onboardingTitle,
              style: context.textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            12.verticalSpace,
            Text(
              AppStrings.onboardingSubtitle,
              style: context.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            48.verticalSpace,
            Image.asset(AppAssets.onboardingImage, fit: BoxFit.contain),
            (context.screenHeight * 0.18).verticalSpace,
            SizedBox(
              width: context.screenWidth,
              height: 56.h,
              child: CustomElevatedButton(
                text: AppStrings.getStarted,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
