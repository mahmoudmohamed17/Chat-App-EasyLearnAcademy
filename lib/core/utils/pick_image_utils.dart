import 'dart:developer';
import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/core/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class PickImageUtils {
  PickImageUtils._();

  static final ImagePicker _picker = ImagePicker();

  /// Picks an image from the specified [source].
  /// Returns the picked [XFile] or null if nothing was picked or an error occurred.
  static Future<XFile?> pickImage({
    required ImageSource source,
    BuildContext? context,
  }) async {
    try {
      log('PickImageUtils: Picking image from $source...');
      final XFile? image = await _picker.pickImage(
        source: source,
        imageQuality: 80,
      );
      if (image != null) {
        log('PickImageUtils: Successfully picked image: ${image.path}');
      } else {
        log('PickImageUtils: No image selected.');
      }
      return image;
    } catch (e) {
      log('PickImageUtils: ERROR picking image: $e');
      return null;
    }
  }

  /// Shows a premium bottom sheet to pick an image source (Camera or Gallery).
  /// Returns the picked [XFile] or null if the user cancelled.
  static Future<XFile?> showImageSourceSelector(BuildContext context) async {
    log('PickImageUtils: Showing source selector...');
    final ImageSource? source = await showModalBottomSheet<ImageSource?>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => _ImageSourceSheet(),
    );

    if (source != null && context.mounted) {
      log('PickImageUtils: Source $source selected, proceeding to pick...');
      return pickImage(source: source, context: context);
    }
    log('PickImageUtils: Source selection cancelled.');
    return null;
  }
}

class _ImageSourceSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppStrings.uploadImage,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          24.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _SourceOption(
                label: AppStrings.camera,
                icon: FontAwesomeIcons.camera,
                onTap: () => Navigator.of(context).pop(ImageSource.camera),
              ),
              _SourceOption(
                label: AppStrings.gallery,
                icon: FontAwesomeIcons.image,
                onTap: () => Navigator.of(context).pop(ImageSource.gallery),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SourceOption extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _SourceOption({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: FaIcon(icon, color: AppColors.primary, size: 28.sp),
            ),
          ),
          12.verticalSpace,
          Text(
            label,
            style: context.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
