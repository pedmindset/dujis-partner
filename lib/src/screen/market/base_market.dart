import 'package:dujis_partner/core/utils/utils.dart';
import 'package:dujis_partner/src/screen/market/pages/account_page.dart';
import 'package:dujis_partner/src/screen/market/pages/dashboard.dart';
import 'package:dujis_partner/src/screen/market/pages/orders_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/animated_bottom_bar.dart';

class BaseMarketScreen extends StatefulWidget {
  const BaseMarketScreen({super.key});

  @override
  State<BaseMarketScreen> createState() => _BaseMarketScreenState();
}

class _BaseMarketScreenState extends State<BaseMarketScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    setupOneSignal(PreferenceUtils.getInt(prefUserId), context);
    super.initState();
  }

  final List<Widget> _children = [
    const MarketDashboardPage(),
    const MarketOrdersPage(),
    const MarketAccountPage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static String bottomIconItem = 'assets/images/footmenu/ic_item.png';

  static String bottomIconOrder = 'assets/images/footmenu/ic_orders.png';

  static String bottomIconAccount = 'assets/images/footmenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    final List<BarItem> barItems = [
      BarItem(
        text: 'Dashboard',
        image: bottomIconOrder,
      ),
      BarItem(
        text: 'Orders',
        image: bottomIconItem,
      ),
      BarItem(
        text: 'Account',
        image: bottomIconAccount,
      ),
    ];
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: AnimatedBottomBar(
        barItems: barItems,
        onBarTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
