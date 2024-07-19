import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'splash_screen_bloc.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppSplashScreenCubit()..loadData(),
      child: BlocListener<AppSplashScreenCubit, AppSplashScreenState>(
        listener: (context, state) {
          if (state == AppSplashScreenState.loaded) {
            AppSplashScreenCubit().navigateToNextScreen(context);
          }
        },
        child: const StaticSplashScreen(),
      ),
    );
  }
}

class StaticSplashScreen extends StatelessWidget {
  const StaticSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: Center(
        child: Image.asset(
          'assets/u_sense_splash.png',
          width: 250,
        ),
      ),
    );
  }
}
