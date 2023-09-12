import 'package:charts_painter/chart.dart';
import 'package:dujis_partner/core/theme/colors.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  double targetMax = 0;
  double targetMin = 0;
  int minItems = 6;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StartupContainer(
      onInit: () async {},
      onDisposed: () {},
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Material(
                        elevation: 1.2,
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: dujisWhiteColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 1.2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.list_rounded,
                                          color: dujisMainBackColor,
                                          size: 24.0,
                                          semanticLabel:
                                              'Text to announce in accessibility modes',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Expanded(
                                        child: Text(
                                      '120',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Divider(
                                  color: dujisCardBackgroundColor,
                                  thickness: 2,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Full Filled Orders',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Material(
                        elevation: 1.2,
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: dujisWhiteColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                              width: 1.2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.money_rounded,
                                          color: Colors.blue[800],
                                          size: 24.0,
                                          semanticLabel:
                                              'Text to announce in accessibility modes',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Expanded(
                                        child: Text(
                                      '₵ 1200',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Divider(
                                  color: dujisCardBackgroundColor,
                                  thickness: 2,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Account Balance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: dujisWhiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Chart(
                      state: ChartState<void>(
                        data: ChartData.fromList(
                          [1, 3, 4, 2, 7, 6, 2, 5, 4]
                              .map(
                                (e) => ChartItem<void>(
                                  e.toDouble(),
                                ),
                              )
                              .toList(),
                          axisMax: 8,
                        ),
                        itemOptions: BarItemOptions(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          barItemBuilder: (_) => BarItem(
                              color: Theme.of(context).colorScheme.secondary),
                          maxBarWidth: 4.0,
                        ),
                        backgroundDecorations: [
                          GridDecoration(
                              verticalAxisStep: 1,
                              horizontalAxisStep: 2,
                              gridColor: Theme.of(context).dividerColor,
                              showHorizontalValues: true,
                              showVerticalValues: true,
                              textStyle: const TextStyle(
                                  fontSize: 12, color: Colors.amber)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
