import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CircularGradientProgressIndicator extends StatelessWidget {
  final double progress;
  final double? size,thickness, radiusFactor,animationDuration;
  final Color darkColor,midColor, lightColor;
  final Color? bgColor;
  final bool? enableLoadingAnimation;
  const CircularGradientProgressIndicator({
    super.key,
    required this.progress,
    required this.darkColor,
    required this.midColor,
    required this.lightColor,
    this.size,
    this.thickness,
    this.radiusFactor,
    this.bgColor,
    this.enableLoadingAnimation,
    this.animationDuration,
  });

  @override
  Widget build(BuildContext context) {
    double progressIn360 = (progress / 100.0) * 360.0;
    return SizedBox(
      height: size ?? 200,
      width: size ?? 200,
      child: SfRadialGauge(
        enableLoadingAnimation: enableLoadingAnimation ?? true,
        animationDuration: animationDuration ?? 1200,
        axes: <RadialAxis>[
          RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: -90,
            endAngle: 360-90,
            radiusFactor: radiusFactor ?? 1,
            axisLineStyle: AxisLineStyle(
              thickness: thickness ?? 0.2,
              cornerStyle: CornerStyle.bothFlat,
              thicknessUnit: GaugeSizeUnit.factor,
              color: bgColor ?? AppColors.loopBgColor,
            ),
          ),
          RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: 0,
            endAngle: 360,
            radiusFactor: radiusFactor ?? 1,
            axisLineStyle: AxisLineStyle(
              thickness: thickness ?? 0.2,
              cornerStyle: CornerStyle.bothFlat,
              thicknessUnit: GaugeSizeUnit.factor,
              color: bgColor ?? AppColors.loopBgColor,
            ),
          ),
          if (progressIn360 > 0 && progressIn360 != 360)
            RadialAxis(
              showLabels: false,
              showTicks: false,
              startAngle: -90,
              endAngle: (progressIn360 > 360 ? 360 : progressIn360)-90,
              radiusFactor: radiusFactor ?? 1,
              axisLineStyle: AxisLineStyle(
                thickness: thickness ?? 0.2,
                cornerStyle: progressIn360 > 360
                    ? CornerStyle.bothFlat
                    : CornerStyle.endCurve,
                thicknessUnit: GaugeSizeUnit.factor,
                color: darkColor,
                gradient: SweepGradient(colors: <Color>[
                  darkColor,
                  progressIn360 > 360 ? midColor : lightColor,
                ], stops: const <double>[
                  0.25,
                  1.0
                ]),
              ),
            ),
          if (progressIn360 == 360)
            RadialAxis(
              showLabels: false,
              showTicks: false,
              startAngle: -90,
              endAngle: 360-90,
              radiusFactor: radiusFactor ?? 1,
              axisLineStyle: AxisLineStyle(
                thickness: thickness ?? 0.2,
                cornerStyle: CornerStyle.bothFlat,
                thicknessUnit: GaugeSizeUnit.factor,
                color: darkColor,
                gradient: SweepGradient(colors: <Color>[
                  darkColor,
                  progressIn360 > 360 ? midColor : lightColor,
                ], stops: const <double>[
                  0.25,
                  1.0
                ]),
              ),
            ),
          if (progressIn360 > 360)
            RadialAxis(
              showLabels: false,
              showTicks: false,
              startAngle: -90,
              endAngle: progressIn360 - 360 - 90,
              radiusFactor: radiusFactor ?? 1,
              axisLineStyle: AxisLineStyle(
                thickness: thickness ?? 0.2,
                cornerStyle: CornerStyle.endCurve,
                thicknessUnit: GaugeSizeUnit.factor,
                color: darkColor,
                gradient: SweepGradient(colors: <Color>[
                  midColor,
                  lightColor,
                ], stops: const <double>[
                  0.25,
                  1.0
                ]),
              ),
            ),
        ],
      ),
    );
  }
}
