import 'package:gradient_progress_indicator/gradient_progress_indicator.dart';
import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: Center(
        child: GradientProgressIndicator(
          radius: 120,
          duration: 3,
          strokeWidth: 12,
          gradientStops: [
            0.2,
            0.8,
          ],
          gradientColors: [
            Colors.white,
            Colors.grey,
          ],
          child: Text(
            'To Start the Rotation:\nhealth_screen>HealthScreen\nComment - gradientStops',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
