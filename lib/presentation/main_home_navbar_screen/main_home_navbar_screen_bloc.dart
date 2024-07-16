import 'package:flutter_bloc/flutter_bloc.dart';

abstract class MainHomeNavbarScreenState {
  final int tabIndex;

  const MainHomeNavbarScreenState({required this.tabIndex});
}

class MainHomeNavbarScreenStateInitial extends MainHomeNavbarScreenState {
  const MainHomeNavbarScreenStateInitial({required super.tabIndex});
}

abstract class MainHomeNavbarScreenEvent {}

class TabChange extends MainHomeNavbarScreenEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}

class MainHomeNavbarScreenBloc
    extends Bloc<MainHomeNavbarScreenEvent, MainHomeNavbarScreenState> {
  MainHomeNavbarScreenBloc()
      : super(const MainHomeNavbarScreenStateInitial(tabIndex: 1)) {
    on<MainHomeNavbarScreenEvent>((event, emit) {
      if (event is TabChange) {
        emit(MainHomeNavbarScreenStateInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
