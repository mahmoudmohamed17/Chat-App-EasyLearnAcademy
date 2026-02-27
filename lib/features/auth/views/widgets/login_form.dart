import 'package:chat_app/core/routing/routes.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/core/utils/validators.dart';
import 'package:chat_app/core/widgets/custom_elevated_button.dart';
import 'package:chat_app/core/widgets/custom_password_text_field.dart';
import 'package:chat_app/core/widgets/custom_text_button.dart';
import 'package:chat_app/core/widgets/custom_text_form_field.dart';
import 'package:chat_app/features/auth/views/widgets/other_login_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _email;
  late TextEditingController _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (context.screenHeight * 0.1).verticalSpace,
          Text(
            AppStrings.loginTitle,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          4.verticalSpace,
          SizedBox(
            width: context.screenWidth * 0.75,
            child: Text(
              AppStrings.loginSubtitle,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          32.verticalSpace,
          CustomTextFormField(
            controller: _email,
            label: AppStrings.emailAddress,
            hint: AppStrings.typeYourEmail,
            validator: (value) {
              return Validators.email(value);
            },
          ),
          24.verticalSpace,
          CustomPasswordTextField(
            controller: _password,
            label: AppStrings.password,
            hint: AppStrings.typeYourPassword,
            validator: (value) {
              return Validators.password(value);
            },
          ),
          16.verticalSpace,
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButton(
              onPressed: () {},
              label: AppStrings.forgotPassword,
            ),
          ),
          32.verticalSpace,
          SizedBox(
            width: context.screenWidth,
            height: 56.h,
            child: CustomElevatedButton(
              text: AppStrings.login,
              onPressed: () {
                context.go(Routes.main);
              },
            ),
          ),
          74.verticalSpace,
          const OtherLoginOptions(),
        ],
      ),
    );
  }
}
