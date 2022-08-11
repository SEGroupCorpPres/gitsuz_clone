import 'package:flutter/material.dart';
import 'package:gitsuz/pages/auth/auth.dart';
import 'package:gitsuz/widgets/intro/src/overboard.dart';
import 'package:gitsuz/widgets/intro/src/page_model.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const IntroScreen());
  }

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        body: OverBoard(
          pages: pages,
          showBullets: true,
          buttonColor: const Color(0xff1D3D1D),
          activeBulletColor: const Color(0xff2B5C2B),
          inactiveBulletColor: const Color(0xffBBDFBB),
          skipCallback: () => Navigator.of(context).push<void>(AuthPage.route()),
          finishCallback: () => Navigator.of(context).push<void>(AuthPage.route()),
        ),
      ),
    );
  }

  final pages = [
    PageModel(
      imageAssetPath: 'assets/1.png',
      title: 'Ro\'yxatdan o\'ting',
      body: '',
      titleColor: Colors.black,
      doAnimateImage: true,
    ),
    PageModel(
      imageAssetPath: 'assets/2.png',
      title: 'So\'rov qoldiring',
      body: 'Siz gid va tarjimonni tanlashingiz yoki so\'rov qoldirishingiz mumkin',
      titleColor: Colors.black,
      bodyColor: Colors.black,
      doAnimateImage: true,
    ),
    PageModel(
      imageAssetPath: 'assets/3.png',
      title: 'Aloqaga chiqing',
      body: '',
      titleColor: Colors.black,
      bodyColor: Colors.black,
      doAnimateImage: true,
    ),
    PageModel(
      imageAssetPath: 'assets/4.png',
      title: 'Ishni Boshlang',
      body: 'Gid va tarjimon bilan bevosita ishni boshlang',
      titleColor: Colors.black,
      bodyColor: Colors.black,
      doAnimateImage: true,
    ),
  ];
}
