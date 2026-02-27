import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/features/auth/data/models/login_option_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtherLoginOptions extends StatelessWidget {
  const OtherLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 48.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12.w,
          children: [
            Expanded(child: Divider(indent: 24.w)),
            Text(
              AppStrings.orLoginWith,
              style: context.textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(child: Divider(endIndent: 24.w)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32.w,
          children: LoginOptionModel.options(
            context,
          ).map((item) => _optionItem(item)).toList(),
        ),
      ],
    );
  }

  Widget _optionItem(LoginOptionModel model) {
    return GestureDetector(
      onTap: model.onTap,
      child: model.pngIcon != null
          ? Image.asset(model.pngIcon!, height: 24.h, width: 24.w)
          : SvgPicture.asset(model.svgIcon!),
    );
  }
}
