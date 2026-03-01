import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/features/main_screen/views/widgets/chats_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsViewBody extends StatefulWidget {
  const TabsViewBody({super.key});

  @override
  State<TabsViewBody> createState() => _TabsViewBodyState();
}

class _TabsViewBodyState extends State<TabsViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: [
        TabBar(
          controller: _tabController,
          dividerColor: Colors.transparent,
          tabs: const [
            Tab(text: AppStrings.chats),
            Tab(text: AppStrings.friends),
            Tab(text: AppStrings.calls),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              ChatsList(),
              Center(child: Text(AppStrings.comingSoon)),
              Center(child: Text(AppStrings.comingSoon)),
            ],
          ),
        ),
      ],
    );
  }
}
