import 'package:chat_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.isBottonNavVisibile});
  final ValueNotifier<bool> isBottonNavVisibile;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isBottonNavVisibile,
      builder: (context, value, child) {
        return AnimatedSlide(
          duration: const Duration(milliseconds: 400),
          offset: value ? Offset.zero : const Offset(0, 1),
          child: AnimatedOpacity(
            opacity: value ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppAssets.homeIcon),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppAssets.addUserIcon),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppAssets.settingIcon),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
