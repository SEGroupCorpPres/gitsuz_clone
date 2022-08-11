import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/cubit/bottom_nav_bar_items.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarState(NavbarItem.homePage, 0));

  void getNavbarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.homePage:
        emit(const BottomNavBarState(NavbarItem.homePage, 0));
        break;
      case NavbarItem.searchPage:
        emit(const BottomNavBarState(NavbarItem.searchPage, 1));
        break;
      case NavbarItem.blogPage:
        emit(const BottomNavBarState(NavbarItem.blogPage, 2));
        break;
      case NavbarItem.profilePage:
        emit(const BottomNavBarState(NavbarItem.profilePage, 3));
        break;
    }
  }
}
