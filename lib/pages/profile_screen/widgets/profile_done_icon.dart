import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDoneIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final double iconSize;
  final double fontSize;

  const ProfileDoneIcon({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconSize,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: Colors.black,
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: fontSize,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}