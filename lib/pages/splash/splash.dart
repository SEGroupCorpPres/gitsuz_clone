import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/home/home.dart';
import 'package:gitsuz/pages/intro/intro_home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashScreen());
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;

// // //
  bool _a = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    )
      ..addListener(() {
        setState(() {});
      });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _a = !_a;
      });
    });

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Opacity(
        opacity: _opacity.value,
        child: Transform.scale(
          scale: _transform.value,
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  'assets/splash_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: size.height * 0.35),
              const Text(
                '2021 - 2022 GITS.UZ',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                ),
              ),
              const Text(
                'Barcha huquqlar himoyalangan',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: size.height * 0.03),
              StreamBuilder<User?>(
                initialData: FirebaseAuth.instance.currentUser,
                stream: FirebaseAuth.instance.userChanges(),
                builder: (context, AsyncSnapshot snapshot){
                  // If the snapshot has user data, then they're already signed in. So Navigating to the Dashboard.
                  if (snapshot.hasData) {
                    Timer(const Duration(milliseconds: 2000), () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const Home()));
                    });
                  } else {
                    Timer(const Duration(milliseconds: 2000), () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const IntroHome()));
                    });
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}