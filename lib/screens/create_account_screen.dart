import 'package:flutter/material.dart';
import 'package:invest_aap_bnq_ismail/screens/signup_screen.dart';

import 'main_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                decoration: textFieldDecoration('Full Name')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                cursorColor: const Color(0xff828282),
                decoration: textFieldDecoration('Email Address')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                cursorColor: const Color(0xff828282),
                decoration: textFieldDecoration('Password')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff31A062),
                    fixedSize: const Size(354, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  "Create account",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                )),
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: Text("Already have an account",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: const Color(0xff31A062)))),
        ],
      ),
    );
  }

  InputDecoration textFieldDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w400),
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
