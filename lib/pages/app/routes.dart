// import 'package:flutter/widgets.dart';
// import 'package:gitsuz/bloc/bloc/app_bloc.dart';
// import 'package:gitsuz/pages/home/view/home_page.dart';
// import 'package:gitsuz/pages/intro/intro_home.dart';
// import 'package:gitsuz/pages/splash/splash.dart';
//
// List<Page<dynamic>> onGenerateAppViewPages(
//   AppStatus state,
//   List<Page<dynamic>> pages,
// ) {
//   switch (state) {
//     case AppStatus.authenticated:
//       return [HomePage.page()];
//     case AppStatus.unauthenticated:
//       return [IntroHome.page()];
//     // default:
//     //   return [SplashScreen.page()];
//   }
//
//   // switch (state.status) {
//   //   case AuthenticationStatus.authenticated:
//   //     _navigator.pushAndRemoveUntil<void>(
//   //       HomePage.route(),
//   //       (route) => false,
//   //     );
//   //     break;
//   //   case AuthenticationStatus.unauthenticated:
//   //     _navigator.pushAndRemoveUntil<void>(
//   //       IntroHome.route(),
//   //       (route) => false,
//   //     );
//   //     break;
//   //   case AuthenticationStatus.unknown:
//   //     _navigator.pushAndRemoveUntil<void>(
//   //       IntroHome.route(),
//   //       (route) => false,
//   //     );
//   // }
// }
