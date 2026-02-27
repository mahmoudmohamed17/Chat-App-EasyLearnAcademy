import 'package:chat_app/core/cubits/theme_cubit.dart';
import 'package:chat_app/core/routing/app_router.dart';
import 'package:chat_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, bool>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeAnimationCurve: Curves.fastOutSlowIn,
                themeAnimationDuration: const Duration(milliseconds: 800),
                themeMode: state ? ThemeMode.dark : ThemeMode.light,
                routerConfig: AppRouter.router,
              );
            },
          ),
        );
      },
    );
  }
}
