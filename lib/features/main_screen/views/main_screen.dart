import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/features/main_screen/views/widgets/bottom_nav_bar.dart';
import 'package:chat_app/features/main_screen/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeBody(),
    const Center(child: Text(AppStrings.comingSoon)),
    const Center(child: Text(AppStrings.comingSoon)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _pages),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
