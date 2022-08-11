import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: GoogleFonts.montserratTextTheme(),
  primarySwatch: Colors.green,
  appBarTheme: AppBarTheme(
      color: Colors.white,
      titleTextStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Color(0xff326A32),
          fontWeight: FontWeight.w500,
        ),
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemStatusBarContrastEnforced: true,
      ),
      iconTheme: const IconThemeData(
        color: Color(0xff326A32),
      )),
  scaffoldBackgroundColor: const Color(0xffffffff),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
);
