import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../widgets/animated_bottom_bar.dart';
import '../account/account_page.dart';
import '../order/order_page.dart';

class BaseShopperScreen extends StatefulWidget {
  const BaseShopperScreen({super.key});

  @override
  State<BaseShopperScreen> createState() => _BaseShopperScreenState();
}

class _BaseShopperScreenState extends State<BaseShopperScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    setupOneSignal(PreferenceUtils.getInt(prefUserId), context);
    super.initState();
  }

  final List<Widget> _children = [
    const OrderPage(),
    // const ItemsPage(),
    const AccountPage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // static String bottomIconItem = 'assets/images/footmenu/ic_item.png';

  static String bottomIconOrder = 'assets/images/footmenu/ic_orders.png';

  static String bottomIconAccount = 'assets/images/footmenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    final List<BarItem> barItems = [
      BarItem(
        text: AppLocalizations.of(context)!.orderText,
        image: bottomIconOrder,
      ),
      // BarItem(
      //   text: AppLocalizations.of(context)!.product,
      //   image: bottomIconItem,
      // ),
      BarItem(
        text: AppLocalizations.of(context)!.account,
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
          }),
    );
  }
}
