import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.shopScaffoldBgColor,
      body: Center(
        child: Text(
          "Shop",
          style: TextStyle(
            color: AppColors.primaryBlueColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
