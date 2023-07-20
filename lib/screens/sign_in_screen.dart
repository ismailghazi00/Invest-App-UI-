import 'package:flutter/material.dart';
import 'package:invest_aap_bnq_ismail/screens/signup_screen.dart';

import 'home_screen.dart';
import 'main_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 50, bottom: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 20,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Create an account",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Invest and double your income now",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                cursorColor: const Color(0xff828282),
                decoration: textFieldDecoration('User Name')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                cursorColor: const Color(0xff828282),
                obscureText: true,
                decoration: textFieldDecoration('Password')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff31A062),
                    fixedSize: const Size(354, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  "Log in",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                )),
          ),
          const Spacer()
        ],
      ),
    );
  }

  InputDecoration textFieldDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
          fontSize: 18,
          color: Color(0xff4F4F4F),
          fontFamily: '.SF UI Text',
          fontWeight: FontWeight.w600),
      border: const OutlineInputBorder(),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Color(0xff828282), width: 0.5),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Color(0xff828282), width: 1),
      ),
    );
  }
}
