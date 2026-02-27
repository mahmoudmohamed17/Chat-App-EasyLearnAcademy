import 'package:chat_app/core/cubits/theme_cubit.dart';
import 'package:chat_app/core/utils/extensions.dart';
import 'package:chat_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 32.h,
            children: [
              Align(
                child: IconButton(
                  onPressed: () {
                    themeCubit.changeTheme();
                  },
                  icon: Icon(
                    themeCubit.state ? Icons.dark_mode : Icons.light_mode,
                  ),
                ),
              ),

              CustomTextField(label: 'Email', hint: 'Type your email...'),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('This is a card'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
