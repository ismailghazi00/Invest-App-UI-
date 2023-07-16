import 'package:flutter/material.dart';
import 'package:invest_aap_bnq_ismail/screens/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchtoSignUp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), switchtoSignUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/splashicon.png"),
      ),
    );
  }
}
