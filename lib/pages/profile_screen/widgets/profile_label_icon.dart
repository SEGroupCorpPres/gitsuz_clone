import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilLabelIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color? iconColor;
  final Color? bgColor;
  final double iconSize;
  final double fontSize;
  final Color? labelColor;

  const ProfilLabelIcon({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconSize,
    required this.fontSize,
    this.bgColor,
    this.iconColor,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: bgColor ?? const Color(0xffEEF7EE),
          radius: 25,
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor ?? const Color(0xff326A32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: fontSize,
              color: labelColor ?? Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}