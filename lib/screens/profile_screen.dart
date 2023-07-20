import 'package:flutter/material.dart';
import 'package:invest_aap_bnq_ismail/widget/profile_page_tiles_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 20,
                ),
                const Spacer()
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Profile",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer()
              ],
            ),
            const SizedBox(height: 25),
            const CircleAvatar(
                radius: 82,
                backgroundColor: Color(0xff31A078),
                foregroundImage:
                    AssetImage("assets/profile_pag_icons/Profilepicture.png")),
            const SizedBox(height: 20),
            Text("Jonas Macroni",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 22)),
            Text("Expert",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.black)),
            const SizedBox(height: 20),
            const ProfilePageTiles()
          ],
        ),
      ),
    );
  }
}
