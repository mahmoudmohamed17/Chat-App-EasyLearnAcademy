import 'package:chat_app/core/utils/app_assets.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.onTap});
  final Function(int index) onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIcon(
              asset: AppAssets.homeIcon,
              index: 0,
              isActive: _currentIndex == 0,
            ),
            _buildIcon(
              asset: AppAssets.addUserIcon,
              index: 1,
              isActive: _currentIndex == 1,
            ),
            _buildIcon(
              asset: AppAssets.settingIcon,
              index: 2,
              isActive: _currentIndex == 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon({
    required String asset,
    required int index,
    bool isActive = false,
  }) {
    return IconButton(
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
        widget.onTap(index);
      },
      icon: SvgPicture.asset(
        asset,
        colorFilter: ColorFilter.mode(
          isActive
              ? context.colorScheme.tertiaryFixed
              : context.colorScheme.tertiaryFixedDim,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
