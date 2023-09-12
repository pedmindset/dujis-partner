import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/src/screen/market/components/latest_order.dart';
import 'package:dujis_partner/src/screen/market/components/past_orders.dart';
import 'package:flutter/material.dart';

class MarketOrdersPage extends StatelessWidget {
  const MarketOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = [
      const Tab(text: 'Latest Orders'),
      const Tab(text: 'Past Orders')
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            // centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              'Orders',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: TabBar(
                tabs: tabs,
                isScrollable: true,
                labelColor: dujisMainColor,
                indicatorColor: dujisMainBackColor,
                unselectedLabelColor: Colors.black45,
                // indicatorPadding: const EdgeInsets.symmetric(horizontal: 24.0),
              ),
            ),
          ),
        ),
        body: _MarkerOrderBody(tabs),
      ),
    );
  }
}

class _MarkerOrderBody extends StatefulWidget {
  const _MarkerOrderBody(this.tabs);

  final List<Tab> tabs;

  @override
  State<_MarkerOrderBody> createState() => __MarkerOrderBodyState();
}

class __MarkerOrderBodyState extends State<_MarkerOrderBody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: TabBarView(
        children: [LatestOrdersScreen(), PastOrdersScreen()],
      ),
    );
  }
}
