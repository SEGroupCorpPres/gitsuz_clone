import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gitsuz/pages/intro/intro.dart';
import 'package:gitsuz/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroHome extends StatefulWidget {
  const IntroHome({Key? key}) : super(key: key);

  @override
  State<IntroHome> createState() => _IntroHomeState();

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const IntroHome());
  }
}

class _IntroHomeState extends State<IntroHome> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/MaskGroup.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaY: 40,
              sigmaX: 200,
            ),
            child: Container(
              color: Colors.white.withOpacity(0.6),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.language_outlined,
                            size: size.width * 0.07,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Xush kelibsiz !',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: size.width * 0.11,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.width * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * 0.09),
                          child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'GITS.UZ',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: size.height * 0.03,
                                      fontFamily: 'Montserrat',
                                      color: const Color(0xff244D24),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: '- bu git va tarjimonlarni online izlash tizimi',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: size.height * 0.03,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.02),
                      child: MainButton(
                        title: 'Bu qanday ishlaydi?'.toUpperCase(),
                        onPressed: () => Navigator.of(context).push<void>(IntroScreen.route()),
                        bgColor: Colors.transparent,
                        borderColor: Colors.grey.withOpacity(0.5),
                        titleColor: const Color(0xff438E43),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
