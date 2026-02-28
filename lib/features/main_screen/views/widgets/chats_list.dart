import 'package:chat_app/features/main_screen/views/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      itemBuilder: (_, __) => const ChatItem(),
      separatorBuilder: (_, __) => 16.verticalSpace,
      itemCount: 20,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
    );
  }
}
