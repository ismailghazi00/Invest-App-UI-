import 'package:flutter/material.dart';

import 'investment_guide.dart';

class BottoSheetWidget extends StatelessWidget {
  const BottoSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:
            MediaQuery.of(context).size.height * 0.95, //Hight of Botom Sheet

        child: Padding(
          padding: const EdgeInsets.all(32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text("My Assest",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 22)),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffB3B3B3),
                      shape: const CircleBorder()),
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.white, size: 20),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Your total asset portfolio",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: const Color(0xffB3B3B3))),
              const SizedBox(height: 7),
              Row(children: [
                Text("N203,935",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.black)),
                const SizedBox(width: 30),
                Image.asset("assets/arrowupicon.png"),
                Text(
                  "+2%",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: const Color(0xff00B907)),
                )
              ])
            ]),
            const SizedBox(height: 30),
            Text("Current Plans",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 22)),
            const SizedBox(height: 15),
            Container(
                height: 207,
                width: 354,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/GoldPlanIcon2.png",
                      )),
                  gradient: const LinearGradient(
                      colors: [Color(0xffD98F39), Color(0xffF0C735)]),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Gold',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Colors.black, fontSize: 18)),
                          const SizedBox(height: 5),
                          Text(
                            '30% return',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontSize: 13, color: Colors.black),
                          )
                        ]))),
            const SizedBox(height: 15),
            TextButton(
                onPressed: () {},
                child: Row(children: [
                  Text(
                    "See All Plans ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xffFE555D),
                        ),
                  ),
                  const Icon(Icons.arrow_forward,
                      size: 18, color: Color(0xffFE555D))
                ])),
            const SizedBox(height: 25),
            Text("History",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 22)),
            const SizedBox(height: 20),
            const InvestmentGuidTile()
          ]),
        ));
  }
}
