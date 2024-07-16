import 'package:nav_splash_bloc/presentation/main_home_navbar_screen/main_home_navbar_screen_bloc.dart';
import 'package:nav_splash_bloc/presentation/main_home_navbar_screen/main_home_navbar_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

enum AppSplashScreenState {
  initial,
  loaded,
}

class AppSplashScreenCubit extends Cubit<AppSplashScreenState> {
  AppSplashScreenCubit() : super(AppSplashScreenState.initial);

  void loadData() {
    Future.delayed(Duration(seconds: 3), () {
      emit(AppSplashScreenState.loaded);
    });
  }

  void navigateToNextScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => MainHomeNavbarScreenBloc(),
          child: MainHomeNavbarScreen(),
        ),
      ),
    );
  }
}