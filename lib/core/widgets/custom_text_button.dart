import 'package:chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.iconAlignment,
    this.borderRadius = 16,
    this.labelColor,
  });

  final VoidCallback onPressed;
  final String label;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final double borderRadius;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    final decoration = context.theme.textButtonTheme;

    return TextButton.icon(
      style: decoration.style?.copyWith(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
        ),
      ),
      onPressed: onPressed,
      label: Text(
        label,
        style: context.theme.textTheme.titleMedium?.copyWith(color: labelColor),
      ),
      icon: icon,
      iconAlignment: iconAlignment,
    );
  }
}
