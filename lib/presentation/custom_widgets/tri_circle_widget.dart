import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'circular_gradient_progress_indicator.dart';
import 'package:flutter/material.dart';

class TriCircleWidget extends StatelessWidget {
  final double eventOnePercentage,
      eventTwoCircleOnePercentage,
      eventTwoCircleTwoPercentage,
      eventThreeCircleOnePercentage,
      eventThreeCircleTwoPercentage,
      eventThreeCircleThreePercentage;
  final String eventOneTitle, eventTwoTitle, eventThreeTitle;
  final TextStyle? eventOneTextStyle, eventTwoTextStyle, eventThreeTextStyle;
  final FontWeight? eventOneFontWeight,
      eventTwoFontWeight,
      eventThreeFontWeight;
  final double? eventOneFontSize, eventTwoFontSize, eventThreeFontSize;
  final Color? eventOneFontColor,
      eventTwoFontColor,
      eventThreeFontColor,
      eventOneColorDark,
      eventOneColorMid,
      eventOneColorLight,
      eventTwoCircleOneColorDark,
      eventTwoCircleOneColorMid,
      eventTwoCircleOneColorLight,
      eventTwoCircleTwoColorDark,
      eventTwoCircleTwoColorMid,
      eventTwoCircleTwoColorLight,
      eventThreeCircleOneColorDark,
      eventThreeCircleOneColorMid,
      eventThreeCircleOneColorLight,
      eventThreeCircleTwoColorDark,
      eventThreeCircleTwoColorMid,
      eventThreeCircleTwoColorLight,
      eventThreeCircleThreeColorDark,
      eventThreeCircleThreeColorMid,
      eventThreeCircleThreeColorLight;
  const TriCircleWidget({
    super.key,
    required this.eventOnePercentage,
    required this.eventTwoCircleOnePercentage,
    required this.eventTwoCircleTwoPercentage,
    required this.eventThreeCircleOnePercentage,
    required this.eventThreeCircleTwoPercentage,
    required this.eventThreeCircleThreePercentage,
    required this.eventOneTitle,
    required this.eventTwoTitle,
    required this.eventThreeTitle,
    this.eventOneTextStyle,
    this.eventTwoTextStyle,
    this.eventThreeTextStyle,
    this.eventOneFontWeight,
    this.eventTwoFontWeight,
    this.eventThreeFontWeight,
    this.eventOneFontSize,
    this.eventTwoFontSize,
    this.eventThreeFontSize,
    this.eventOneFontColor,
    this.eventTwoFontColor,
    this.eventThreeFontColor,
    this.eventOneColorDark,
    this.eventOneColorMid,
    this.eventOneColorLight,
    this.eventTwoCircleOneColorDark,
    this.eventTwoCircleOneColorMid,
    this.eventTwoCircleOneColorLight,
    this.eventTwoCircleTwoColorDark,
    this.eventTwoCircleTwoColorMid,
    this.eventTwoCircleTwoColorLight,
    this.eventThreeCircleOneColorDark,
    this.eventThreeCircleOneColorMid,
    this.eventThreeCircleOneColorLight,
    this.eventThreeCircleTwoColorDark,
    this.eventThreeCircleTwoColorMid,
    this.eventThreeCircleTwoColorLight,
    this.eventThreeCircleThreeColorDark,
    this.eventThreeCircleThreeColorMid,
    this.eventThreeCircleThreeColorLight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularGradientProgressIndicator(
              progress: eventOnePercentage,
              darkColor:
                  eventOneColorDark ?? AppColors.singleLoopGradientColorDark,
              midColor:
                  eventOneColorMid ?? AppColors.singleLoopGradientColorMid,
              lightColor:
                  eventOneColorLight ?? AppColors.singleLoopGradientColorLight,
              size: 150,
              thickness: 0.2,
            ),
            Text(
              eventOneTitle,
              style: eventOneTextStyle ??
                  TextStyle(
                    color: eventOneFontColor ??
                        AppColors.singleLoopGradientColorLight,
                    fontSize: eventOneFontSize ?? 18,
                    fontWeight: eventOneFontWeight ?? FontWeight.w600,
                  ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircularGradientProgressIndicator(
                  progress: eventTwoCircleTwoPercentage,
                  darkColor: eventTwoCircleTwoColorDark ??
                      AppColors.doubleLoopGradientColorTwoDark,
                  midColor: eventTwoCircleTwoColorMid ??
                      AppColors.doubleLoopGradientColorTwoMid,
                  lightColor: eventTwoCircleTwoColorLight ??
                      AppColors.doubleLoopGradientColorTwoLight,
                  size: 150,
                  thickness: 0.12,
                ),
                CircularGradientProgressIndicator(
                  progress: eventTwoCircleOnePercentage,
                  darkColor: eventTwoCircleOneColorDark ??
                      AppColors.doubleLoopGradientColorOneDark,
                  midColor: eventTwoCircleOneColorMid ??
                      AppColors.doubleLoopGradientColorOneMid,
                  lightColor: eventTwoCircleOneColorLight ??
                      AppColors.doubleLoopGradientColorOneLight,
                  size: 120,
                  thickness: 0.15,
                ),
                Text(
                  eventTwoTitle,
                  style: eventTwoTextStyle ??
                      TextStyle(
                        color: eventTwoFontColor ??
                            AppColors.doubleLoopGradientColorOneLight,
                        fontSize: eventTwoFontSize ?? 18,
                        fontWeight: eventTwoFontWeight ?? FontWeight.w600,
                      ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                CircularGradientProgressIndicator(
                  progress: eventThreeCircleThreePercentage,
                  darkColor: eventThreeCircleThreeColorDark ??
                      AppColors.tripleLoopGradientColorThreeDark,
                  midColor: eventThreeCircleThreeColorMid ??
                      AppColors.tripleLoopGradientColorThreeMid,
                  lightColor: eventThreeCircleThreeColorLight ??
                      AppColors.tripleLoopGradientColorThreeLight,
                  size: 150,
                  thickness: 0.12,
                ),
                CircularGradientProgressIndicator(
                  progress: eventThreeCircleTwoPercentage,
                  darkColor: eventThreeCircleTwoColorDark ??
                      AppColors.tripleLoopGradientColorTwoDark,
                  midColor: eventThreeCircleTwoColorMid ??
                      AppColors.tripleLoopGradientColorTwoMid,
                  lightColor: eventThreeCircleTwoColorLight ??
                      AppColors.tripleLoopGradientColorTwoLight,
                  size: 120,
                  thickness: 0.15,
                ),
                CircularGradientProgressIndicator(
                  progress: eventThreeCircleOnePercentage,
                  darkColor: eventThreeCircleOneColorDark ??
                      AppColors.tripleLoopGradientColorOneDark,
                  midColor: eventThreeCircleOneColorMid ??
                      AppColors.tripleLoopGradientColorOneMid,
                  lightColor: eventThreeCircleOneColorLight ??
                      AppColors.tripleLoopGradientColorOneLight,
                  size: 90,
                  thickness: 0.20,
                ),
                Text(
                  eventThreeTitle,
                  style: TextStyle(
                    color: eventThreeFontColor ??
                        AppColors.tripleLoopGradientColorOneMid,
                    fontSize: eventThreeFontSize ?? 18,
                    fontWeight: eventThreeFontWeight ?? FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class SmallTriCircleWidget extends StatelessWidget {
  final double eventOnePercentage,
      eventTwoCircleOnePercentage,
      eventTwoCircleTwoPercentage,
      eventThreeCircleOnePercentage,
      eventThreeCircleTwoPercentage,
      eventThreeCircleThreePercentage;
  final String? eventOneTitle, eventTwoTitle, eventThreeTitle;
  final TextStyle? eventOneTextStyle, eventTwoTextStyle, eventThreeTextStyle;
  final FontWeight? eventOneFontWeight,
      eventTwoFontWeight,
      eventThreeFontWeight;
  final double? eventOneFontSize, eventTwoFontSize, eventThreeFontSize;
  final bool? enableLoadingAnimation;
  final Color? eventOneFontColor,
      eventTwoFontColor,
      eventThreeFontColor,
      eventOneColorDark,
      eventOneColorMid,
      eventOneColorLight,
      eventTwoCircleOneColorDark,
      eventTwoCircleOneColorMid,
      eventTwoCircleOneColorLight,
      eventTwoCircleTwoColorDark,
      eventTwoCircleTwoColorMid,
      eventTwoCircleTwoColorLight,
      eventThreeCircleOneColorDark,
      eventThreeCircleOneColorMid,
      eventThreeCircleOneColorLight,
      eventThreeCircleTwoColorDark,
      eventThreeCircleTwoColorMid,
      eventThreeCircleTwoColorLight,
      eventThreeCircleThreeColorDark,
      eventThreeCircleThreeColorMid,
      eventThreeCircleThreeColorLight;
  const SmallTriCircleWidget({
    super.key,
    required this.eventOnePercentage,
    required this.eventTwoCircleOnePercentage,
    required this.eventTwoCircleTwoPercentage,
    required this.eventThreeCircleOnePercentage,
    required this.eventThreeCircleTwoPercentage,
    required this.eventThreeCircleThreePercentage,
    this.eventOneTitle,
    this.eventTwoTitle,
    this.eventThreeTitle,
    this.eventOneTextStyle,
    this.eventTwoTextStyle,
    this.eventThreeTextStyle,
    this.eventOneFontWeight,
    this.eventTwoFontWeight,
    this.eventThreeFontWeight,
    this.eventOneFontSize,
    this.eventTwoFontSize,
    this.eventThreeFontSize,
    this.eventOneFontColor,
    this.eventTwoFontColor,
    this.eventThreeFontColor,
    this.eventOneColorDark,
    this.eventOneColorMid,
    this.eventOneColorLight,
    this.eventTwoCircleOneColorDark,
    this.eventTwoCircleOneColorMid,
    this.eventTwoCircleOneColorLight,
    this.eventTwoCircleTwoColorDark,
    this.eventTwoCircleTwoColorMid,
    this.eventTwoCircleTwoColorLight,
    this.eventThreeCircleOneColorDark,
    this.eventThreeCircleOneColorMid,
    this.eventThreeCircleOneColorLight,
    this.eventThreeCircleTwoColorDark,
    this.eventThreeCircleTwoColorMid,
    this.eventThreeCircleTwoColorLight,
    this.eventThreeCircleThreeColorDark,
    this.eventThreeCircleThreeColorMid,
    this.eventThreeCircleThreeColorLight,
    this.enableLoadingAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularGradientProgressIndicator(
              progress: eventOnePercentage,
              darkColor:
                  eventOneColorDark ?? AppColors.singleLoopGradientColorDark,
              midColor:
                  eventOneColorMid ?? AppColors.singleLoopGradientColorMid,
              lightColor:
                  eventOneColorLight ?? AppColors.singleLoopGradientColorLight,
              size: 30,
              thickness: 0.2,
              enableLoadingAnimation: enableLoadingAnimation ?? false,
            ),
            if (eventOneTitle != null)
              Text(
                eventOneTitle ?? "",
                style: eventOneTextStyle ??
                    TextStyle(
                      color: eventOneFontColor ??
                          AppColors.singleLoopGradientColorLight,
                      fontSize: eventOneFontSize ?? 8,
                      fontWeight: eventOneFontWeight ?? FontWeight.w600,
                    ),
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircularGradientProgressIndicator(
                  progress: eventTwoCircleTwoPercentage,
                  darkColor: eventTwoCircleTwoColorDark ??
                      AppColors.doubleLoopGradientColorTwoDark,
                  midColor: eventTwoCircleTwoColorMid ??
                      AppColors.doubleLoopGradientColorTwoMid,
                  lightColor: eventTwoCircleTwoColorLight ??
                      AppColors.doubleLoopGradientColorTwoLight,
                  size: 30,
                  thickness: 0.12,
                  enableLoadingAnimation: enableLoadingAnimation ?? false,
                ),
                CircularGradientProgressIndicator(
                  progress: eventTwoCircleOnePercentage,
                  darkColor: eventTwoCircleOneColorDark ??
                      AppColors.doubleLoopGradientColorOneDark,
                  midColor: eventTwoCircleOneColorMid ??
                      AppColors.doubleLoopGradientColorOneMid,
                  lightColor: eventTwoCircleOneColorLight ??
                      AppColors.doubleLoopGradientColorOneLight,
                  size: 20,
                  thickness: 0.15,
                  enableLoadingAnimation: enableLoadingAnimation ?? false,
                ),
                if (eventTwoTitle != null)
                  Text(
                    eventTwoTitle ?? "",
                    style: eventTwoTextStyle ??
                        TextStyle(
                          color: eventTwoFontColor ??
                              AppColors.doubleLoopGradientColorOneLight,
                          fontSize: eventTwoFontSize ?? 8,
                          fontWeight: eventTwoFontWeight ?? FontWeight.w600,
                        ),
                  ),
              ],
            ),
            const SizedBox(width: 5),
            Stack(
              alignment: Alignment.center,
              children: [
                CircularGradientProgressIndicator(
                  progress: eventThreeCircleThreePercentage,
                  darkColor: eventThreeCircleThreeColorDark ??
                      AppColors.tripleLoopGradientColorThreeDark,
                  midColor: eventThreeCircleThreeColorMid ??
                      AppColors.tripleLoopGradientColorThreeMid,
                  lightColor: eventThreeCircleThreeColorLight ??
                      AppColors.tripleLoopGradientColorThreeLight,
                  size: 30,
                  thickness: 0.12,
                  enableLoadingAnimation: enableLoadingAnimation ?? false,
                ),
                CircularGradientProgressIndicator(
                  progress: eventThreeCircleTwoPercentage,
                  darkColor: eventThreeCircleTwoColorDark ??
                      AppColors.tripleLoopGradientColorTwoDark,
                  midColor: eventThreeCircleTwoColorMid ??
                      AppColors.tripleLoopGradientColorTwoMid,
                  lightColor: eventThreeCircleTwoColorLight ??
                      AppColors.tripleLoopGradientColorTwoLight,
                  size: 20,
                  thickness: 0.15,
                  enableLoadingAnimation: enableLoadingAnimation ?? false,
                ),
                CircularGradientProgressIndicator(
                  progress: eventThreeCircleOnePercentage,
                  darkColor: eventThreeCircleOneColorDark ??
                      AppColors.tripleLoopGradientColorOneDark,
                  midColor: eventThreeCircleOneColorMid ??
                      AppColors.tripleLoopGradientColorOneMid,
                  lightColor: eventThreeCircleOneColorLight ??
                      AppColors.tripleLoopGradientColorOneLight,
                  size: 10,
                  thickness: 0.20,
                  enableLoadingAnimation: enableLoadingAnimation ?? false,
                ),
                if (eventThreeTitle != null)
                  Text(
                    eventThreeTitle ?? "",
                    style: TextStyle(
                      color: eventThreeFontColor ??
                          AppColors.tripleLoopGradientColorOneMid,
                      fontSize: eventThreeFontSize ?? 8,
                      fontWeight: eventThreeFontWeight ?? FontWeight.w600,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
