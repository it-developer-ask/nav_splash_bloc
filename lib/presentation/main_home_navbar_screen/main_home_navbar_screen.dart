import 'package:nav_splash_bloc/presentation/custom_widgets/bottom_navbar_item.dart';
import 'package:nav_splash_bloc/presentation/health_screen/health_screen.dart';
import 'package:nav_splash_bloc/presentation/home_screen/home_screen.dart';
import 'package:nav_splash_bloc/presentation/shop_screen/shop_screen.dart';
import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_home_navbar_screen_bloc.dart';
import 'package:flutter/material.dart';

List<Widget> bottomNavScreen = <Widget>[
  HealthScreen(),
  HomeScreen(),
  ShopScreen(),
];

class MainHomeNavbarScreen extends StatefulWidget {
  MainHomeNavbarScreen({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MainHomeNavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainHomeNavbarScreenBloc, MainHomeNavbarScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        List<BottomAppBarItem> bottomNavItems = <BottomAppBarItem>[
          BottomAppBarItem(
            title: "Health",
            imageUrl: 'assets/health_icon.png',
            toNotShowSelector: state.tabIndex == 0 ? false : true,
            onTap: () {
              BlocProvider.of<MainHomeNavbarScreenBloc>(context)
                  .add(TabChange(tabIndex: 0));
            },
          ),
          BottomAppBarItem(
            isCenterWidget: true,
            toNotShowSelector: state.tabIndex == 1 ? false : true,
            onTap: () {
              BlocProvider.of<MainHomeNavbarScreenBloc>(context)
                  .add(TabChange(tabIndex: 1));
            },
          ),
          BottomAppBarItem(
            title: "Shop",
            imageUrl: 'assets/shop.png',
            toNotShowSelector: state.tabIndex == 2 ? false : true,
            onTap: () {
              BlocProvider.of<MainHomeNavbarScreenBloc>(context)
                  .add(TabChange(tabIndex: 2));
            },
          ),
        ];
        return Scaffold(
          backgroundColor: AppColors.scaffoldBgColor,
          body: bottomNavScreen.elementAt(state.tabIndex),
          bottomNavigationBar: Container(
            height: 80,
            color: AppColors.navbarBgColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: bottomNavItems,
            ),
          ),
        );
      },
    );
  }
}
