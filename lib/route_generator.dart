import 'package:flutter/material.dart';
import 'package:gitsuz/pages/auth/auth.dart';
import 'package:gitsuz/pages/home/view/home.dart';
import 'package:gitsuz/pages/intro/intro.dart';
import 'package:gitsuz/pages/intro/intro_home.dart';
import 'package:gitsuz/pages/signin/recovery_password.dart';
import 'package:gitsuz/pages/signin/signin.dart';
import 'package:gitsuz/pages/signup/signup.dart';
//
// List<Page<dynamic>> onGenerateAppViewPages(List<Page> pages) {
//   return [
//     SplashScreen.page(),
//     Home.page(),
//     IntroHome.page(),
//     IntroScreen.page(),
//     AuthPage.page(),
//     SignInPage.page(),
//     SignUpPage.page(),
//     RecoveryPasswordPage.page(),
//   ];
// }

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home-page':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/intro-screen':
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case '/intro-home':
        return MaterialPageRoute(builder: (_) => const IntroHome());
      case '/auth-page':
        return MaterialPageRoute(builder: (_) => AuthPage());
      case '/sign-in-page':
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case '/sign-up-page':
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case '/reset-pass-page':
        return MaterialPageRoute(builder: (_) => const RecoveryPasswordPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  backgroundColor: Colors.green,
                ));
    }
  }
}
