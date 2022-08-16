import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Topic extends StatelessWidget {
  final String topic;
  final String topicStatus;

  const Topic({
    Key? key,
    required this.topic,
    required this.topicStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Text(
              topic,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.black,
                letterSpacing: 0.25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            width: 70,
            child: Text(
              topicStatus,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: const Color(0xff326A32),
                letterSpacing: 0.25,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
