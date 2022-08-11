import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color? iconColor;
  final Color? bgColor;
  final double iconSize;
  final double fontSize;
  final Color? labelColor;

  const LabelIcon({
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: bgColor ?? const Color(0xffEEF7EE),
          radius: 15,
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor ?? const Color(0xff326A32),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: fontSize,
            color: labelColor ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
