import 'package:nav_splash_bloc/presentation/custom_widgets/bottom_navbar_item.dart';
import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_home_navbar_screen_bloc.dart';
import 'package:flutter/material.dart';

class MainHomeNavbarScreen extends StatefulWidget {
  MainHomeNavbarScreen({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MainHomeNavbarScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> bottomNavScreen = <Widget>[
      Text(
        'Index 0: Health',
        style: TextStyle(color: Colors.white),
      ),
      Text(
        'Index 1: Home',
        style: TextStyle(color: Colors.white),
      ),
      Text(
        'Index 2: Shop',
        style: TextStyle(color: Colors.white),
      ),
    ];

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
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
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
