import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/cubit/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:gitsuz/cubit/bottom_nav_bar_items.dart';
import 'package:gitsuz/pages/blog_screen/blog_page.dart';
import 'package:gitsuz/pages/home/home_page.dart';
import 'package:gitsuz/pages/profile_screen/profile_page.dart';
import 'package:gitsuz/pages/search_screen/search_page.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:gitsuz/widgets/bottom_nav_bar_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const Home());
  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;
  final user = FirebaseAuth.instance.currentUser!;
  List<IconData> listOfIcons = [
    FeatherIcons.home,
    FeatherIcons.search,
    Icons.article_outlined,
    EvaIcons.personOutline,
  ];

  List<String> listOfStrings = [
    'Asosiy',
    'Qidiruv',
    'Blog',
    'Profile',
  ];

  @override
  void initState() {
    currentIndex;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
          builder: (context, state) {
            return Stack(
              children: [
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: null,
                ),
                Container(
                  child: state.navbarItem == NavbarItem.homePage
                      ? const HomePage()
                      : state.navbarItem == NavbarItem.searchPage
                          ? const SearchPage()
                          : state.navbarItem == NavbarItem.blogPage
                              ? const BlogPage()
                              : state.navbarItem == NavbarItem.profilePage
                                  ? const ProfilePage()
                                  : Container(),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: size.width,
                    color: Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.03),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(size.width * 0.1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.16),
                            blurRadius: 20,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      width: size.width,
                      height: size.width * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              BottomNavBarItem(
                                icon: FeatherIcons.home,
                                title: 'Asosiy',
                                onTap: () {
                                  BlocProvider.of<BottomNavBarCubit>(context).getNavbarItem(NavbarItem.homePage);
                                  setState(() {
                                    currentIndex = 0;
                                  });
                                },
                                color: const Color(0xff326A32),
                                size: size.width * 0.06,
                                fontSize: size.width * 0.04,
                              ),
                              BottomNavBarItem(
                                icon: FeatherIcons.search,
                                title: 'Qidiruv',
                                onTap: () {
                                  BlocProvider.of<BottomNavBarCubit>(context).getNavbarItem(NavbarItem.searchPage);
                                  setState(() {
                                    currentIndex = 1;
                                  });
                                },
                                color: const Color(0xff326A32),
                                size: size.width * 0.06,
                                fontSize: size.width * 0.04,
                              ),
                              BottomNavBarItem(
                                icon: Icons.article_outlined,
                                title: 'Blog',
                                onTap: () {
                                  BlocProvider.of<BottomNavBarCubit>(context).getNavbarItem(NavbarItem.blogPage);
                                  setState(() {
                                    currentIndex = 2;
                                  });
                                },
                                color: const Color(0xff326A32),
                                size: size.width * 0.06,
                                fontSize: size.width * 0.04,
                              ),
                              BottomNavBarItem(
                                icon: EvaIcons.personOutline,
                                title: 'Profil',
                                onTap: () {
                                  BlocProvider.of<BottomNavBarCubit>(context).getNavbarItem(NavbarItem.profilePage);
                                  setState(() {
                                    currentIndex = 3;
                                  });
                                },
                                color: const Color(0xff326A32),
                                size: size.width * 0.06,
                                fontSize: size.width * 0.04,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
