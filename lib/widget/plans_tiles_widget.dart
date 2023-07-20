import 'package:flutter/material.dart';

class PlansTilesWidget extends StatelessWidget {
  const PlansTilesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
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
        const SizedBox(width: 20),
        Container(
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
        const SizedBox(width: 20),
        Container(
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
      ],
    );
  }
}
