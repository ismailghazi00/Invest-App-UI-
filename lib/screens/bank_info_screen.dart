import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankInfoScreen extends StatelessWidget {
  const BankInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 18,
                  color: Colors.black),
              const Spacer(),
              Text("Bank of account info",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 17)),
              const Spacer(),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            //-------List View
            children: [accountInfoTile01(), accountInfoTile02()],
          ),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff31A062),
                fixedSize: const Size(354, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text("Add account",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white))),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Padding accountInfoTile01() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
      child: Container(
        height: 111,
        width: 355,
        decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: const Offset(0.6, 1), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 5),
              child: Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/listbuttonicon.png")),
                ],
              ),
            ),
            Row(children: [
              const SizedBox(width: 20),
              Image.asset("assets/Bankicon1.png"),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Bank of Amrica - 0182128xxx",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff555555),
                        fontFamily: '.SF UI Display',
                        fontWeight: FontWeight.w600,
                      )),
                  Text("Jonas Macroni",
                      style: GoogleFonts.catamaran(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }

  Padding accountInfoTile02() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Container(
        height: 111,
        width: 355,
        decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: const Offset(0.6, 1), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 5),
              child: Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/listbuttonicon.png")),
                ],
              ),
            ),
            Row(children: [
              const SizedBox(width: 20),
              Image.asset("assets/Bankicon2.png"),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Zenith Bank - 0182128xxx",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff555555),
                        fontFamily: '.SF UI Display',
                        fontWeight: FontWeight.w600,
                      )),
                  Text("Jonas Macroni",
                      style: GoogleFonts.catamaran(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
