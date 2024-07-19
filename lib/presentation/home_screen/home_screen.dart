import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(
            color: AppColors.primaryWhiteColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
