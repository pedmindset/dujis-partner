import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:charts_painter/chart.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../widgets/spaces.dart';
import '../../startup_container.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  final items = [1, 3, 4, 2, 7, 6, 2, 5, 4];
  @override
  Widget build(BuildContext context) {
    return StartupContainer(
      onInit: () async {},
      onDisposed: () {},
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            leading: const BackButton(color: Colors.black),
            backgroundColor: Colors.transparent,
            title: Text(
              'Reports',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FadedSlideAnimation(
                        beginOffset: const Offset(0, 0.3),
                        endOffset: const Offset(0, 0),
                        slideCurve: Curves.linearToEaseOut,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.format_list_bulleted_add,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                ),
                                const SpaceW10(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "New Order",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                    const SpaceH8(),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.blue[800],
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FadedSlideAnimation(
                        beginOffset: const Offset(0, 0.3),
                        endOffset: const Offset(0, 0),
                        slideCurve: Curves.linearToEaseOut,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.indigo[100],
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.format_list_bulleted_sharp,
                                      color: Colors.indigo[800],
                                    ),
                                  ),
                                ),
                                const SpaceW10(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pending Order",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                    const SpaceH8(),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Colors.indigo[800],
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceH8(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.green[200],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.format_list_bulleted_add,
                                    color: Colors.green[800],
                                  ),
                                ),
                              ),
                              const SpaceW10(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Confirm Order",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SpaceH8(),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      color: dujisMainBackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.red[100],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.free_cancellation_outlined,
                                    color: Colors.red[800],
                                  ),
                                ),
                              ),
                              const SpaceW10(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Cancel Order",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SpaceH8(),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      color: Colors.red[800],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceH20(),
                // const SizedBox(
                //   height: 16,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: dujisWhiteColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Chart(
                          state: ChartState(
                            data: ChartData.fromList(
                              items
                                  .map(
                                    (e) => ChartItem<void>(
                                      e.toDouble(),
                                    ),
                                  )
                                  .toList(),
                            ),
                            itemOptions: BarItemOptions(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              barItemBuilder: (_) => BarItem(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
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
        ),
      ),
    );
  }
}
