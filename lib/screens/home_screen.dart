import 'package:flutter/material.dart';
import 'package:invest_aap_bnq_ismail/widget/plans_tiles_widget.dart';

import '../widget/bottom_sheet_widget.dart';

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
                const SizedBox(
                  width: 414,
                  height: 170,
                  child: PlansTilesWidget(),
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
                return const BottoSheetWidget();
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
}
