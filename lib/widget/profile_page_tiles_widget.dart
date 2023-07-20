import 'package:flutter/material.dart';

class ProfilePageTiles extends StatelessWidget {
  const ProfilePageTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: ListTile(
              onTap: () {},
              title: Text(
                "Contact Info",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18, color: Colors.black),
              ),
              leading: Image.asset("assets/profile_pag_icons/contacticon.png"),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.black, size: 20),
              tileColor: Colors.white),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 60,
          child: ListTile(
              onTap: () {},
              title: Text(
                "Source of Funding Info",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18, color: Colors.black),
              ),
              leading: Image.asset("assets/profile_pag_icons/fundingicon.png"),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.black, size: 20),
              tileColor: Colors.white),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 60,
          child: ListTile(
              onTap: () {},
              title: Text(
                "Bank Account Info",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18, color: Colors.black),
              ),
              leading: Image.asset("assets/profile_pag_icons/bankicon.png"),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.black, size: 20),
              tileColor: Colors.white),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 60,
          child: ListTile(
              onTap: () {},
              title: Text(
                "Document Info",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18, color: Colors.black),
              ),
              leading: Image.asset("assets/profile_pag_icons/docicon.png"),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.black, size: 20),
              tileColor: Colors.white),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 60,
          child: ListTile(
              onTap: () {},
              title: Text(
                "Settings",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 18, color: Colors.black),
              ),
              leading: Image.asset("assets/profile_pag_icons/settingicon.png"),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: Colors.black, size: 20),
              tileColor: Colors.white),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
