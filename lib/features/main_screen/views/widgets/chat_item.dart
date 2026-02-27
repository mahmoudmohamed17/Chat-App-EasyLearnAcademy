import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            border: Border.all(color: AppColors.primaryLight, width: 1.5),
          ),
          child: ListTile(
            onTap: () {
              // TODO: Navigate to chat screen from here
            },
            leading: CircleAvatar(
              radius: 24.r,
              backgroundImage: const AssetImage(AppAssets.dummyUserImage),
            ),
            title: SizedBox(
              width: context.screenWidth * 0.8,
              child: Text(
                'Robert Fox',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 4.w,
              children: [
                FaIcon(
                  FontAwesomeIcons.circleCheck,
                  color: AppColors.success,
                  size: 12.sp,
                ),
                SizedBox(
                  width: context.screenWidth * 0.5,
                  child: Text(
                    'Hey, let’s play basketball this evening',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
            trailing: Text(
              '03:15',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelSmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            isThreeLine: true,
            dense: true,
            visualDensity: VisualDensity.comfortable,
            contentPadding: EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 12.w,
            ),
          ),
        ),
        Positioned(
          bottom: 12.h,
          right: 12.w,
          child: CircleAvatar(
            radius: 12.r,
            backgroundColor: AppColors.primary,
            child: Text(
              '1',
              style: context.textTheme.labelMedium?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
