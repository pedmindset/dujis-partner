import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../widgets/market_item.dart';

class MarketDashboardPage extends StatefulWidget {
  const MarketDashboardPage({super.key});

  @override
  State<MarketDashboardPage> createState() => _MarketDashboardPageState();
}

class _MarketDashboardPageState extends State<MarketDashboardPage> {
  @override
  Widget build(BuildContext context) {
    final supBloc = context.read<SuppliersBloc>();
    return StartupContainer(
      onInit: () async {
        supBloc.add(const SDashboard());
        supBloc.add(const SLatestOrders());
      },
      onDisposed: () {
        supBloc.add(const SDashboardReset());
        supBloc.add(const SLatestOrdersReset());
      },
      child: ScaffoldGradientBackground(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.grey[50]!,
              Colors.grey[200]!,
            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.black87),
                ),
                Text(
                  DateFormat('yyyy-MM-dd').format(DateTime.now()),
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today's Report",
                        style: TextStyle(
                          // color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () => Navigator.of(context).push(
                      //     MaterialPageRoute<ReportsPage>(
                      //       builder: (BuildContext context) =>
                      //           const ReportsPage(),
                      //     ),
                      //   ),
                      //   child: const Text("All Report"),
                      // ),
                    ],
                  ),
                  const SpaceH20(),
                  BlocBuilder<SuppliersBloc, SuppliersState>(
                      builder: (context, state) {
                    if (state.dashboardStatus.isDashboardLoading) {
                      return const Card(
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Center(
                            child: Column(
                              children: [
                                CircularProgressIndicator(),
                                SpaceH16(),
                                Text(
                                  'Loading report...',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.4,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    if (state.dashboardStatus.isDashboardSuccess &&
                        state.dashboardData != null) {
                      return Column(
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
                                              borderRadius:
                                                  BorderRadius.circular(50),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                state.dashboardData != null
                                                    ? state
                                                        .dashboardData!.pending
                                                        .toString()
                                                    : '0',
                                                style: TextStyle(
                                                  color: Colors.blue[800],
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
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Icon(
                                                Icons
                                                    .format_list_bulleted_sharp,
                                                color: Colors.indigo[800],
                                              ),
                                            ),
                                          ),
                                          const SpaceW10(),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                state.dashboardData != null
                                                    ? state
                                                        .dashboardData!.pending
                                                        .toString()
                                                    : '0',
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
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              state.dashboardData != null
                                                  ? state.dashboardData!.confirm
                                                      .toString()
                                                  : '0',
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
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              state.dashboardData != null
                                                  ? state
                                                      .dashboardData!.cancelled
                                                      .toString()
                                                  : '0',
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
                        ],
                      );
                    }

                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(
                            state.dashboardMessage ??
                                'Sorry could not load report.',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                  const SpaceH20(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today's Order",
                        style: TextStyle(
                          // color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () => Navigator.of(context).push(
                      //     MaterialPageRoute<AllOrdersPage>(
                      //       builder: (BuildContext context) =>
                      //           const AllOrdersPage(),
                      //     ),
                      //   ),
                      //   child: const Text("All Order"),
                      // ),
                    ],
                  ),
                  const SpaceH4(),
                  BlocBuilder<SuppliersBloc, SuppliersState>(
                      builder: (context, state) {
                    if (state.latestStatus.isLatestOrdersLoading) {
                      return const Card(
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Center(
                            child: Column(
                              children: [
                                CircularProgressIndicator(),
                                SpaceH16(),
                                Text(
                                  'Loading latest orders...',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.4,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    if (state.latestStatus.isLatestOrdersSuccess &&
                        state.latestOrders.isNotEmpty) {
                      return FadedSlideAnimation(
                        beginOffset: const Offset(0, 0.3),
                        endOffset: const Offset(0, 0),
                        slideCurve: Curves.linearToEaseOut,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.latestOrders.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final item = state.latestOrders[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: MarketItem(
                                kPadding: 16,
                                item: item,
                              ),
                            );
                          },
                        ),
                      );
                    }
                    if (state.latestStatus.isLatestOrdersError) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              state.dashboardMessage ??
                                  'Sorry could not load orders.',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.4,
                              ),
                            ),
                          ),
                        ),
                      );
                    }

                    return const BlankContent(
                      content: 'No Latest Order',
                    );
                  }),
                ],
              ),
            ),
          )),
    );
  }
}
