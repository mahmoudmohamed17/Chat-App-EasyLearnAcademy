import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        spacing: 12.w,
        children: [
          Expanded(
            child: SizedBox(
              height: 56.h,
              child: CustomTextField(
                hint: AppStrings.searchChat,
                prefixIcon: SvgPicture.asset(
                  AppAssets.searchIcon,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                    context.colorScheme.onSurface,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              borderRadius: BorderRadius.all(Radius.circular(16.r)),
            ),
            height: 56.h,
            width: 56.w,
            child: SvgPicture.asset(
              AppAssets.scanIcon,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                context.colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
