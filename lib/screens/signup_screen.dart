import 'package:flutter/material.dart';

import 'create_account_screen.dart';
import 'main_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset("assets/signUPIcon.png"),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
            child: Text(
              "Stay on top of your finance with us.",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
              child: Text(
                "We are your new financial Advisors to recommed the best investments for you",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccountScreen()));
                },
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
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: Text("Login",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: const Color(0xff31A062)))),
          const Spacer()
        ],
      ),
    );
  }
}
