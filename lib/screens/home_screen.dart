import 'package:flutter/material.dart';

import '../widgets/bottom_sheet_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/menuicon.png")),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/notification.png"))
              ],
            ),
            Text(
              "Welcome, Jessie",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            investTileContainer(),
            const SizedBox(height: 10),
            SizedBox(
              //----------------------------------------Plans Container
              width: 414,
              height: 294,
              child: Column(children: [
                bestPlansSeeAllButton(),
                SizedBox(
                  width: 414,
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      goldPlan(),
                      const SizedBox(width: 20),
                      silverPlan(),
                      const SizedBox(width: 20),
                      platinumPlan()
                    ],
                  ),
                )
              ]),
            ),
            Column(
              //-----------------------------------------------List Tile
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Investment Guide',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: Text(
                    "Basic type of investments",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18, color: const Color(0xff4F4F4F)),
                  ),
                  subtitle: Text(
                    "This is how you set your foot for 2020 Stock market recession. What’s next...",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    foregroundImage:
                        AssetImage("assets/InvestmentGuidIcons02.png"),
                  ),
                ),
                const Divider(height: 1),
                const SizedBox(height: 20),
                ListTile(
                  title: Text(
                    "How much can you start wit..",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18, color: const Color(0xff4F4F4F)),
                  ),
                  subtitle: Text(
                    "What do you like to see? It’s a very different market from 2018. The way...",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    foregroundImage:
                        AssetImage("assets/InvestmentGuidIcons01.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  InkWell investTileContainer() {
    //-------------------------Modal Bottom Sheet
    return InkWell(
      onTap: () {
        setState(() {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return bottomSheetItems();
              });
        });
      },
      child: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff31A078), Color(0xff31A05F)]),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 125,
        width: 354,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 32, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your total asset portfolio",
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("N203,935",
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(125, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      'Invest now',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: const Color(0xff31A078)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row bestPlansSeeAllButton() {
    return Row(
      children: [
        Text(
          'Best Plans',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 24),
        ),
        const Spacer(),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "See All ",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xffFE555D),
                      ),
                ),
                const Icon(Icons.arrow_forward,
                    size: 18, color: Color(0xffFE555D))
              ],
            ))
      ],
    );
  }

  InkWell goldPlan() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 170,
        width: 134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill,
              scale: 100,
              opacity: 100,
              image: AssetImage(
                "assets/GoldPlanIcon.png",
              )),
          gradient: const LinearGradient(
              colors: [Color(0xffD98F39), Color(0xffF0C735)]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gold',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '30% return',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell silverPlan() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 170,
        width: 134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill,
              scale: 100,
              opacity: 100,
              image: AssetImage(
                "assets/SilverPlanIcon.png",
              )),
          gradient: const LinearGradient(
              colors: [Color(0xffCAC9C9), Color(0xff979797)]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Slver',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '60% return',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell platinumPlan() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 170,
        width: 134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill,
              scale: 100,
              opacity: 100,
              image: AssetImage(
                "assets/SilverPlanIcon.png",
              )),
          gradient: const LinearGradient(
              colors: [Color(0xffBA8DF3), Color(0xff615EE2)]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Platinum',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '90% return',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox bottomSheetItems() {
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
            SizedBox(
              height: 280,
              width: 414,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rp 2000.000",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: 18)),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text("Buy\"APPL\" Stock",
                                style: Theme.of(context).textTheme.bodySmall),
                            const Spacer(),
                            Text(
                              "TUE 22 JUN 2020",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rp 150.000",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 18,
                                    color: const Color(0xff00B907))),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text("Sell “TLKM” Stock",
                                style: Theme.of(context).textTheme.bodySmall),
                            const Spacer(),
                            Text(
                              "TUE 22 Jun 2020",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rp 1.000.240",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: 18)),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text("Sell “TLKM” Stock",
                                style: Theme.of(context).textTheme.bodySmall),
                            const Spacer(),
                            Text(
                              "TUE 22 JUN 2020",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rp 1.000.240",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 18,
                                    color: const Color(0xff00B907))),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text("Buy “FB” Stock",
                                style: Theme.of(context).textTheme.bodySmall),
                            const Spacer(),
                            Text(
                              "TUE 22 Jun 2020",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
