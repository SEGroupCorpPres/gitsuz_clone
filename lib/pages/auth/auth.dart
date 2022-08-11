import 'package:flutter/material.dart';
import 'package:gitsuz/pages/signin/signin.dart';
import 'package:gitsuz/pages/signup/signup.dart';
import 'package:gitsuz/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  static Page page() {
    return MaterialPage<void>(child: AuthPage());
  }
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => AuthPage());
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white.withOpacity(0.6),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'O\'tkazib yuborish',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xff326A32),
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/auth.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: size.width * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.09),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Kirish yoki ro\'yxatdan o\'tish',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.02),
                      child: MainButton(title: 'kirish'.toUpperCase(), onPressed: () => Navigator.of(context).push<void>(SignInPage.route()))),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.02),
                      child: MainButton(
                        title: 'ro\'yxatdan o\'tish'.toUpperCase(),
                        onPressed: () => Navigator.of(context).push<void>(SignUpPage.route()),
                        bgColor: Colors.transparent,
                        borderColor: Colors.grey.withOpacity(0.5),
                        titleColor: const Color(0xff438E43),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
