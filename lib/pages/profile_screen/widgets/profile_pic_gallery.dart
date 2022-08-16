import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class ProfilePicGallery extends StatelessWidget {
  static const routeName = '/SlidersPage_1';
  final List images = [
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
    'assets/Rectangle278.png',
  ];

  ProfilePicGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            padding: const EdgeInsets.all(16.0),

            /// -----------------------------------
            /// First Swiper
            /// -----------------------------------
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 1),
                          blurRadius: 2
                        )
                      ]
                    ),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: 10,
              viewportFraction: 0.8,
              scale: 0.9,
              pagination: const SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}
