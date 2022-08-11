part of 'bottom_nav_bar_cubit.dart';

class BottomNavBarState extends Equatable{
  final NavbarItem navbarItem;
  final int index;

  const BottomNavBarState(this.navbarItem, this.index);

  @override
  // TODO: implement props
  List<Object?> get props => [navbarItem, index];

}