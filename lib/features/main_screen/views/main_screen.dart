import 'package:chat_app/core/utils/app_strings.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/features/main_screen/views/widgets/chats_list.dart';
import 'package:chat_app/features/main_screen/views/widgets/search_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchHeader(),
            16.verticalSpace,
            TabBar(
              controller: _tabController,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: AppStrings.chats),
                Tab(text: AppStrings.friends),
                Tab(text: AppStrings.calls),
              ],
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const ChatsList(),
                  Center(
                    child: Text(
                      AppStrings.commingSoon,
                      style: context.textTheme.titleLarge,
                    ),
                  ),
                  Center(
                    child: Text(
                      AppStrings.commingSoon,
                      style: context.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),

            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.house),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.userPlus),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.gear),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
