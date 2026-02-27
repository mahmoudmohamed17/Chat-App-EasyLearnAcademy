import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/features/auth/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // fit: StackFit.expand,
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: const [LoginForm()],
            ),
            Positioned(
              top: context.screenHeight * 0.015,
              right: -52.w,
              child: Image.asset(
                AppAssets.girlWithLaptopImage,
                height: 210.h,
                width: 210.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
