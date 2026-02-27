import 'package:chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final Color textColor;
  final double borderRadius;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.icon,
    this.fontWeight,
    this.iconAlignment,
    this.textColor = Colors.white,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: context.theme.elevatedButtonTheme.style?.copyWith(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      icon: icon,
      iconAlignment: iconAlignment,
      label: Text(
        text,
        style: context.textTheme.bodyLarge?.copyWith(
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
