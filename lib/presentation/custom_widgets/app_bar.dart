import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required BuildContext context,bool? isDrawerMenuDisabled}) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: Icon(
      isDrawerMenuDisabled==true?Icons.arrow_back_ios:CupertinoIcons.text_justifyleft,
      color: AppColors.lightIconColor,
    ),
    title: const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.calendar_today_outlined,
          color: AppColors.lightIconColor,
        ),
        SizedBox(width: 10),
        Text(
          "Today",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.lightIconColor,
          ),
        ),
      ],
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Icon(
          Icons.shopping_cart_outlined,
          color: AppColors.lightIconColor,
        ),
      ),
    ],
    backgroundColor: AppColors.scaffoldBgColor,
  );
}
