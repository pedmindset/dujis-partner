// import 'package:animation_wrappers/animation_wrappers.dart';
// import 'package:dujis_partner/core/theme/theme.dart';
// import 'package:flutter/material.dart';

// import '../widgets/market_item.dart';

// class AllOrdersPage extends StatefulWidget {
//   const AllOrdersPage({super.key});

//   @override
//   State<AllOrdersPage> createState() => _AllOrdersPageState();
// }

// class _AllOrdersPageState extends State<AllOrdersPage> {
//   @override
//   Widget build(BuildContext context) {
//     final List<Tab> tabs = [
//       const Tab(text: 'New Orders'),
//       // const Tab(text: 'Pending Orders'),
//       const Tab(text: 'Confirm Orders'),
//       const Tab(text: 'Cancel Orders'),
//     ];
//     return DefaultTabController(
//       length: tabs.length,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(100.0),
//           child: AppBar(
//             // centerTitle: true,
//             leading: const BackButton(color: Colors.black),
//             backgroundColor: Colors.transparent,
//             title: Text(
//               'Orders',
//               style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//                     color: Colors.black,
//                     fontSize: 16,
//                   ),
//             ),
//             bottom: PreferredSize(
//               preferredSize: const Size.fromHeight(0.0),
//               child: TabBar(
//                 tabs: tabs,
//                 isScrollable: true,
//                 labelColor: kMainColor,
//                 indicatorColor: kMainBackColor,
//                 unselectedLabelColor: Colors.black45,
//                 // indicatorPadding: const EdgeInsets.symmetric(horizontal: 24.0),
//               ),
//             ),
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             newOrders(),
//             // pendingOrders(),
//             confirmOrders(),
//             cancelOrders(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget newOrders() {
//     return FadedSlideAnimation(
//       beginOffset: const Offset(0, 0.3),
//       endOffset: const Offset(0, 0),
//       slideCurve: Curves.linearToEaseOut,
//       child: ListView.separated(
//         itemCount: 2,
//         separatorBuilder: (BuildContext context, int index) => Divider(
//           color: Theme.of(context).cardColor,
//           thickness: 8.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return MarketItem(
//             kPadding: 16,
//             item: ,
//           );
//         },
//       ),
//     );
//   }

//   Widget confirmOrders() {
//     return FadedSlideAnimation(
//       beginOffset: const Offset(0, 0.3),
//       endOffset: const Offset(0, 0),
//       slideCurve: Curves.linearToEaseOut,
//       child: ListView.separated(
//         itemCount: 12,
//         separatorBuilder: (BuildContext context, int index) => Divider(
//           color: Theme.of(context).cardColor,
//           thickness: 8.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return const MarketItem(
//             kPadding: 16,
//           );
//         },
//       ),
//     );
//   }

//   Widget cancelOrders() {
//     return FadedSlideAnimation(
//       beginOffset: const Offset(0, 0.3),
//       endOffset: const Offset(0, 0),
//       slideCurve: Curves.linearToEaseOut,
//       child: ListView.separated(
//         itemCount: 12,
//         separatorBuilder: (BuildContext context, int index) => Divider(
//           color: Theme.of(context).cardColor,
//           thickness: 8.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return const MarketItem(
//             kPadding: 16,
//           );
//         },
//       ),
//     );
//   }
// }
