import 'package:dujis_partner/src/screen/auth/login/login_page.dart';
import 'package:dujis_partner/src/screen/market/base_market.dart';
import 'package:dujis_partner/src/screen/order/track_order.dart';
import 'package:dujis_partner/src/screen/shopper/base_shopper.dart';
import 'package:dujis_partner/src/screen/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:dujis_partner/src/screen/account/ListItems/reviews.dart';
import 'package:dujis_partner/src/screen/account/ListItems/settings_page.dart';
import 'package:dujis_partner/src/screen/account/ListItems/support_page.dart';
import 'package:dujis_partner/src/screen/account/ListItems/tnc_page.dart';
import 'package:dujis_partner/src/screen/account/ListItems/wallet_page.dart';
import 'package:dujis_partner/src/screen/account/account_page.dart';
import 'package:dujis_partner/src/screen/base_page.dart';
import 'package:dujis_partner/src/screen/chat/chat_page.dart';
import 'package:dujis_partner/src/screen/order/order_page.dart';
import 'package:dujis_partner/src/screen/product/add_product.dart';
import 'package:dujis_partner/src/screen/product/edit_product.dart';
import 'package:dujis_partner/src/screen/product/products.dart';
import 'package:dujis_partner/src/screen/storeprofile/store_profile.dart';

class PageRoutes {
  static const String shopperPage = 'shopper_page';
  static const String supplierPage = 'supplier_page';
  static const String homePage = 'home_page';
  static const String splash = 'splash_page';
  static const String locationPage = 'location_page';
  static const String orderItemAccountPage = 'order_item_account';
  static const String accountPage = 'account_page';
  static const String orderPage = 'order_page';
  static const String orderInfoPage = 'orderinfo_page';
  static const String tncPage = 'tnc_page';
  static const String savedAddressesPage = 'saved_addresses_page';
  static const String supportPage = 'support_page';
  static const String walletPage = 'wallet_page';
  static const String loginNavigator = 'login_navigator';
  static const String chatPage = 'chat_page';
  static const String insightPage = 'insight_page';
  static const String storeProfile = 'store_profile';
  static const String addItem = 'additem';
  static const String editItem = 'edititem';
  static const String items = 'items';
  static const String addToBank = 'addtobank_page';
  static const String review = 'reviews';
  static const String setting = 'settings_page';
  static const String track = 'track_order';

  // market
  static const String mDashboard = 'market_dashboard';
  static const String mOrders = 'market_orders';
  static const String mAlOrders = 'market_all_orders';
  static const String mAccount = 'market_account';
  static const String mOrderDetail = 'market_order_detail';
  static const String mReport = 'market_report';

  Map<String, WidgetBuilder> routes() {
    return {
      shopperPage: (context) => const BaseShopperScreen(),
      supplierPage: (context) => const BaseMarketScreen(),
      track: (context) => const TrackOrderPage(),
      // locationPage: (context) => LocationPage(),
      orderPage: (context) => const OrderPage(),
      // orderInfoPage: (context) => const OrderInfo(),
      accountPage: (context) => const AccountPage(),
      tncPage: (context) => const TncPage(),
      supportPage: (context) => const SupportPage(),
      loginNavigator: (context) => const LoginScreen(),
      walletPage: (context) => const WalletPage(),
      chatPage: (context) => const ChatPage(),
      // insightPage: (context) => const InsightPage(),
      storeProfile: (context) => const ProfilePage(),
      addItem: (context) => const AddItem(),
      editItem: (context) => const EditItem(),
      // addToBank: (context) => const AddToBank(),
      items: (context) => const ItemsPage(),
      orderItemAccountPage: (context) => const OrderItemAccount(),
      review: (context) => const ReviewPage(),
      setting: (context) => const Settings(),
      splash: (context) => const SplashPage(),
      // market
      mDashboard: (context) => const Settings(),
      mOrders: (context) => const Settings(),
    };
  }
}
