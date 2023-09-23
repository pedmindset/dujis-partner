import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/src/screen/shopper/widget/order_item.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewOrdersPage extends StatelessWidget {
  const NewOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orderBloc = context.read<OrdersBloc>();
    return StartupContainer(
      onInit: () async {
        orderBloc.add(const ShopperGetNewOrders());
      },
      onDisposed: () {},
      child: Scaffold(
        body: BlocConsumer<OrdersBloc, OrdersState>(
          listener: (context, state) {
            if (state.newOrdersStatus.isError ||
                state.newOrdersStatus.isNetworkError) {
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(
                      state.message.toString(),
                    ),
                  ),
                );
            }
          },
          builder: (context, state) {
            if (state.newOrdersStatus.isLoading) {
              return const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SpaceH36(),
                    Text(
                      'Fetching your orders... \nPlease wait.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              );
            } else if (state.newOrdersStatus.isSuccess &&
                state.newOrders.isNotEmpty) {
              return FadedSlideAnimation(
                beginOffset: const Offset(0, 0.3),
                endOffset: const Offset(0, 0),
                slideCurve: Curves.linearToEaseOut,
                child: ListView.builder(
                  itemCount: state.newOrders.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final order = state.newOrders[index];
                    // return Text(order.code.toString());
                    return ShopperItem(
                      orderEntity: order,
                    );
                  },
                ),
              );
            } else {
              return BlankContent(
                onPressed: () {
                  orderBloc.add(const ShopperGetNewOrders());
                },
              );
            }
            // else if (state.status.isOrderSuccess && state.orders.isNotEmpty) {
            //   return FadedSlideAnimation(
            //     beginOffset: const Offset(0, 0.3),
            //     endOffset: const Offset(0, 0),
            //     slideCurve: Curves.linearToEaseOut,
            //     child: ListView.builder(
            //       itemCount: state.orders.length,
            //       shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         final order = state.orders[index];
            //         return ShopperItem(
            //           orderEntity: order,
            //         );
            //       },
            //     ),
            //   );
            // } else {
            //   return BlankContent(
            //     onPressed: () {
            //       orderBloc.add(const ShopperGetOrders());
            //     },
            //   );
            // }
          },
        ),
      ),
    );
  }
}
