import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/cubit/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:gitsuz/cubit/bottom_nav_bar_items.dart';
import 'package:gitsuz/pages/blog_screen/blog_page.dart';
import 'package:gitsuz/pages/home/view/home_page.dart';
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
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F5),
        body: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
          builder: (context, state) {
            if (state.navbarItem == NavbarItem.homePage) {
              return const HomePage();
            } else if (state.navbarItem == NavbarItem.searchPage) {
              return const SearchPage();
            } else if (state.navbarItem == NavbarItem.blogPage) {
              return const BlogPage();
            } else if (state.navbarItem == NavbarItem.profilePage) {
              return const ProfilePage();
            } else {
              return Container();
            }
          },
        ),
        bottomNavigationBar: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.03),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(size.width * 0.1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
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
                        onTap: () {},
                        color: const Color(0xff326A32),
                        size: size.width * 0.06,
                        fontSize: size.width * 0.04,
                      ),
                      BottomNavBarItem(
                        icon: FeatherIcons.search,
                        title: 'Qidiruv',
                        onTap: () {},
                        color: const Color(0xff326A32),
                        size: size.width * 0.06,
                        fontSize: size.width * 0.04,
                      ),
                      BottomNavBarItem(
                        icon: Icons.article_outlined,
                        title: 'Blog',
                        onTap: () {},
                        color: const Color(0xff326A32),
                        size: size.width * 0.06,
                        fontSize: size.width * 0.04,
                      ),
                      BottomNavBarItem(
                        icon: EvaIcons.personOutline,
                        title: 'Profile',
                        onTap: () {},
                        color: const Color(0xff326A32),
                        size: size.width * 0.06,
                        fontSize: size.width * 0.04,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
//
//
//
// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage> {
//   var currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     double displayWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         margin: EdgeInsets.all(displayWidth * .05),
//         height: displayWidth * .155,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.1),
//               blurRadius: 30,
//               offset: Offset(0, 10),
//             ),
//           ],
//           borderRadius: BorderRadius.circular(50),
//         ),
//         child: ListView.builder(
//           itemCount: 4,
//           scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
//           itemBuilder: (context, index) => InkWell(
//             onTap: () {
//               setState(() {
//                 currentIndex = index;
//                 HapticFeedback.lightImpact();
//               });
//             },
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Stack(
//               children: [
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex
//                       ? displayWidth * .32
//                       : displayWidth * .18,
//                   alignment: Alignment.center,
//                   child: AnimatedContainer(
//                     duration: Duration(seconds: 1),
//                     curve: Curves.fastLinearToSlowEaseIn,
//                     height: index == currentIndex ? displayWidth * .12 : 0,
//                     width: index == currentIndex ? displayWidth * .32 : 0,
//                     decoration: BoxDecoration(
//                       color: index == currentIndex
//                           ? Colors.blueAccent.withOpacity(.2)
//                           : Colors.transparent,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                 ),
//                 AnimatedContainer(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   width: index == currentIndex
//                       ? displayWidth * .31
//                       : displayWidth * .18,
//                   alignment: Alignment.center,
//                   child: Stack(
//                     children: [
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width:
//                             index == currentIndex ? displayWidth * .13 : 0,
//                           ),
//                           AnimatedOpacity(
//                             opacity: index == currentIndex ? 1 : 0,
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             child: Text(
//                               index == currentIndex
//                                   ? '${listOfStrings[index]}'
//                                   : '',
//                               style: TextStyle(
//                                 color: Colors.blueAccent,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             width:
//                             index == currentIndex ? displayWidth * .03 : 20,
//                           ),
//                           Icon(
//                             listOfIcons[index],
//                             size: displayWidth * .076,
//                             color: index == currentIndex
//                                 ? Colors.blueAccent
//                                 : Colors.black26,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<IconData> listOfIcons = [
//     Icons.home_rounded,
//     Icons.favorite_rounded,
//     Icons.settings_rounded,
//     Icons.person_rounded,
//   ];
//
//   List<String> listOfStrings = [
//     'Home',
//     'Favorite',
//     'Settings',
//     'Account',
//   ];
// }
