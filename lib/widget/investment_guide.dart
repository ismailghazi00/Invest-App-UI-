import 'package:flutter/material.dart';

class InvestmentGuidTile extends StatelessWidget {
  const InvestmentGuidTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18, color: const Color(0xff00B907))),
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
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18, color: const Color(0xff00B907))),
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
    );
  }
}
