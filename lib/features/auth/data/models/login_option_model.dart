import 'package:chat_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class LoginOptionModel {
  final VoidCallback onTap;
  final String? pngIcon;
  final String? svgIcon;

  LoginOptionModel({required this.onTap, this.pngIcon, this.svgIcon});

  static List<LoginOptionModel> options(BuildContext context) {
    return [
      LoginOptionModel(onTap: () {}, pngIcon: AppAssets.googleIcon),
      LoginOptionModel(onTap: () {}, svgIcon: AppAssets.appleIcon),
      LoginOptionModel(onTap: () {}, svgIcon: AppAssets.facebookIcon),
    ];
  }
}
