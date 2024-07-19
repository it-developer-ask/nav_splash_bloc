import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'tri_circle_widget.dart';

class DayWithTriCircularWidget extends StatelessWidget {
  final double eventOnePercentage,
      eventTwoCircleOnePercentage,
      eventTwoCircleTwoPercentage,
      eventThreeCircleOnePercentage,
      eventThreeCircleTwoPercentage,
      eventThreeCircleThreePercentage;
  final String day;
  final TextStyle? dayTextStyle;
  final double? dayFontSize, distanceBetweenWidgets;
  final FontWeight? dayFontWeight;
  final Color? dayTextColor;
  final bool? enableLoadingAnimation;
  const DayWithTriCircularWidget({
    super.key,
    required this.eventOnePercentage,
    required this.eventTwoCircleOnePercentage,
    required this.eventTwoCircleTwoPercentage,
    required this.eventThreeCircleOnePercentage,
    required this.eventThreeCircleTwoPercentage,
    required this.eventThreeCircleThreePercentage,
    required this.day,
    this.dayTextStyle,
    this.dayFontSize,
    this.distanceBetweenWidgets,
    this.dayFontWeight,
    this.dayTextColor,
    this.enableLoadingAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            day,
            style: dayTextStyle ??
                TextStyle(
                  color: dayTextColor ?? AppColors.lightIconColor,
                  fontSize: dayFontSize ?? 16,
                  fontWeight: dayFontWeight ?? FontWeight.w600,
                ),
          ),
          SizedBox(height: distanceBetweenWidgets ?? 8),
          SmallTriCircleWidget(
            eventOnePercentage: eventOnePercentage,
            eventTwoCircleOnePercentage: eventTwoCircleOnePercentage,
            eventTwoCircleTwoPercentage: eventTwoCircleTwoPercentage,
            eventThreeCircleOnePercentage: eventThreeCircleOnePercentage,
            eventThreeCircleTwoPercentage: eventThreeCircleTwoPercentage,
            eventThreeCircleThreePercentage: eventThreeCircleThreePercentage,
            enableLoadingAnimation: enableLoadingAnimation,
          ),
        ],
      ),
    );
  }
}
