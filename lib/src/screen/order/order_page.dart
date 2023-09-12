import 'package:flutter/material.dart';

// import '../../routes/routes.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/utils.dart';
import 'components/new_orders.dart';
import 'components/past_orders.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = <Tab>[
      Tab(text: AppLocalizations.of(context)!.newOrder),
      Tab(text: AppLocalizations.of(context)!.pastOrder),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            title: Text(
              AppLocalizations.of(context)!.orderText!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: TabBar(
                tabs: tabs,
                isScrollable: true,
                labelColor: dujisMainColor,
                unselectedLabelColor: dujisLightTextColor,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 24.0),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          NewOrdersPage(),
          PastOrdersPage(),
        ]),
      ),
    );
  }
}
