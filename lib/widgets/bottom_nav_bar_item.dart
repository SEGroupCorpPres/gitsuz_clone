import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  final double fontSize;
  final double size;
  final Color color;
  const BottomNavBarItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.fontSize,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size,
            color: color,
          ),
          Text(
            title,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: const Color(0xff326A32),
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
