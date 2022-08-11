import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color? titleColor;
  final Color? borderColor;
  final Color? bgColor;

  const MainButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.titleColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.bgColor = const Color(0xff326A32),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: bgColor!,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: borderColor!,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: titleColor!,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
