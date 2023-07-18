import 'package:flutter/material.dart';
import 'package:invest_aap_bnq_ismail/screens/profile_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int slectedIndex = 2;
const List<Widget> _allScreens = [
  HomeScreen(),
  Text('Product'),
  Text('Transaction'),
  ProfileScreen()
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int tappedIndex) {
            setState(() {
              slectedIndex = tappedIndex;
            });
          },
          currentIndex: slectedIndex,
          selectedItemColor: const Color(0xff31A062),
          // selectedIconTheme: const IconThemeData(color: Color(0xff31A062)),
          unselectedItemColor: const Color(0xff828282),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Product"),
            BottomNavigationBarItem(
                icon: Image.asset('assets/TransIcon.png'),
                label: "Transaction"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Account"),
          ]),
      body: _allScreens[slectedIndex],
    );
  }
}
