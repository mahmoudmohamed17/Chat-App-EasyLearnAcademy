import 'package:chat_app/features/main_screen/data/utils/scroll_visibility_controller.dart';
import 'package:chat_app/features/main_screen/views/widgets/bottom_nav_bar.dart';
import 'package:chat_app/features/main_screen/views/widgets/search_header.dart';
import 'package:chat_app/features/main_screen/views/widgets/tabs_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final ScrollVisibilityController _scrollVisibilityController;

  @override
  void initState() {
    super.initState();
    _scrollVisibilityController = ScrollVisibilityController();
  }

  @override
  void dispose() {
    _scrollVisibilityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                16.verticalSpace,
                const SearchHeader(),
                16.verticalSpace,
                Expanded(
                  child: TabsViewBody(
                    scrollController:
                        _scrollVisibilityController.scrollController,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavBar(
                isBottonNavVisibile:
                    _scrollVisibilityController.isBottonNavVisibile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
