import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invest_aap_bnq_ismail/screens/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invest App BNQ by Ismail',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.dmSans(
              fontSize: 34, color: Colors.black, fontWeight: FontWeight.w800),
          bodyMedium: const TextStyle(
              fontSize: 18,
              color: Color(0xff4F4F4F),
              fontFamily: '.SF UI Text',
              fontWeight: FontWeight.w600),
          bodySmall: const TextStyle(
              fontSize: 14,
              color: Color(0xff4F4F4F),
              fontFamily: '.SF UI Display',
              fontWeight: FontWeight.w400),
          titleLarge: GoogleFonts.dmSans(
            fontSize: 34,
            color: Colors.white,
          ),
          titleMedium: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontFamily: '.SF UI Text',
              fontWeight: FontWeight.w500),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
