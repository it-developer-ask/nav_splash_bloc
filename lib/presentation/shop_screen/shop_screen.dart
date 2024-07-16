import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shopScaffoldBgColor,
      body: Center(
        child: Text(
          'Index 2: Shop',
          style: TextStyle(color: AppColors.shopScaffoldFgColor),
        ),
      ),
    );
  }
}
