import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomAppBarItem extends StatelessWidget {
  final String? title, imageUrl, centerImageUrl;
  final TextStyle? titleStyle;
  final double? titleFontSize,
      imageSize,
      selectorHeight,
      selectorWidth,
      topBottomPadding,
      centerImageSize,
      centerWidgetLeftPadding;
  final Color? fgColor, bgColor, selectorActiveColor;
  final Size? size;
  final bool? toNotShowSelector, toNotShowTitle, isCenterWidget;
  final Function? onTap;
  const BottomAppBarItem(
      {super.key,
      this.title,
      this.centerImageUrl,
      this.titleStyle,
      this.titleFontSize,
      this.fgColor,
      this.imageUrl,
      this.imageSize,
      this.selectorHeight,
      this.selectorActiveColor,
      this.selectorWidth,
      this.size,
      this.toNotShowSelector,
      this.toNotShowTitle,
      this.topBottomPadding,
      this.isCenterWidget,
      this.centerWidgetLeftPadding,
      this.onTap,
      this.bgColor,
      this.centerImageSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap != null ? onTap!() : () {};
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: topBottomPadding ?? 5),
            child: Container(
              height: selectorHeight ?? 3,
              color: toNotShowSelector == true
                  ? (bgColor ?? AppColors.navbarBgColor)
                  : (selectorActiveColor ??
                      (fgColor ?? AppColors.navbarFgColor)),
              width: selectorWidth ??
                  ((size != null
                              ? size!.width
                              : MediaQuery.of(context).size.width) /
                          3) -
                      10,
            ),
          ),
          if (isCenterWidget == true)
            Container(
              height: centerImageSize ?? 60,
              width: centerImageSize ?? 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: toNotShowSelector == true
                    ? AppColors.navbarMidBgColor
                    : AppColors.navbarFgColor,
              ),
              padding: EdgeInsets.only(left: centerWidgetLeftPadding ?? 5),
              margin:
                  EdgeInsets.only(bottom: toNotShowSelector == true ? 5 : 1),
              child: Image.asset(
                  centerImageUrl ?? 'assets/center_button.png'),
            ),
          if (isCenterWidget != true)
            Image.asset(
              imageUrl ?? 'assets/circle.png',
              width: imageSize ?? 30,
              height: imageSize ?? 30,
              color: fgColor ?? AppColors.navbarFgColor,
            ),
          if (isCenterWidget == true) Container(),
          if (isCenterWidget != true)
            Padding(
              padding: EdgeInsets.only(bottom: topBottomPadding ?? 5),
              child: Text(
                toNotShowTitle == true ? "" : (title ?? ""),
                style: titleStyle ??
                    TextStyle(
                      color: fgColor ?? AppColors.navbarFgColor,
                      fontSize: titleFontSize ?? 16,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
