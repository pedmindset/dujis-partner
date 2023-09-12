import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../widgets/animated_bottom_bar.dart';
import 'account/account_page.dart';
import 'order/order_page.dart';
import 'product/products.dart';

class OrderItemAccount extends StatefulWidget {
  const OrderItemAccount({super.key});

  @override
  State<OrderItemAccount> createState() => _OrderItemAccountState();
}

class _OrderItemAccountState extends State<OrderItemAccount> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _children = [
    const OrderPage(),
    const ItemsPage(),
    const AccountPage(),
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
        text: AppLocalizations.of(context)!.orderText,
        image: bottomIconOrder,
      ),
      BarItem(
        text: AppLocalizations.of(context)!.product,
        image: bottomIconItem,
      ),
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
