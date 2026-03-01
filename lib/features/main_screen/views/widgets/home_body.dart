import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'search_header.dart';
import 'tabs_view_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.verticalSpace,
        const SearchHeader(),
        16.verticalSpace,
        const Expanded(child: TabsViewBody()),
      ],
    );
  }
}
