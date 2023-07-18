import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
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
                          builder: (context) => const HomeScreen()));
                },
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 20,
              ),
            ),
          ),
            SizedBox(
              height: 60,
              child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Profile",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 18),
                  ),
                  leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.white),
            ),
                        SizedBox(
              height: 60,
              child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Profile",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 18),
                  ),
                  leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
