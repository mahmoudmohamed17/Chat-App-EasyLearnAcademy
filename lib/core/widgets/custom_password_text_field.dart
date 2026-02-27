import 'package:chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A customizable text field designed for handling the password input
/// or any text field similar to it
class CustomPasswordTextField extends StatefulWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final int maxLines;
  final bool enabled;
  final ValueChanged<String>? onChanged;

  const CustomPasswordTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.maxLines = 1,
    this.enabled = true,
    this.onChanged,
  });

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    final decoration = context.theme.inputDecorationTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        if (widget.label != null) ...[
          Text(widget.label ?? '', style: context.textTheme.labelLarge),
        ],
        TextFormField(
          controller: widget.controller,
          obscureText: !_isVisible,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          maxLines: widget.maxLines,
          enabled: widget.enabled,
          onChanged: widget.onChanged,
          style: context.textTheme.bodyMedium,
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.prefixIcon,
            suffixIcon: IconButton(
              onPressed: () => setState(() {
                _isVisible = !_isVisible;
              }),
              icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
            ),
            border: decoration.border,
            enabledBorder: decoration.enabledBorder,
            disabledBorder: decoration.disabledBorder,
            focusedBorder: decoration.focusedBorder,
            contentPadding: decoration.contentPadding,
            hintStyle: decoration.hintStyle,
            fillColor: decoration.fillColor,
            filled: decoration.filled,
            constraints: BoxConstraints(maxHeight: 56.h, minHeight: 48.h),
          ),
        ),
      ],
    );
  }
}
