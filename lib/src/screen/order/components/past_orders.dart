import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/src/screen/shopper/widget/order_item.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PastOrdersPage extends StatelessWidget {
  const PastOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orderBloc = context.read<PastOrdersBloc>();
    return StartupContainer(
      onInit: () async {
        orderBloc.add(const ShopperPastGetOrders());
      },
      onDisposed: () {},
      child: Scaffold(
        body: BlocConsumer<PastOrdersBloc, PastOrdersState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.status.isPastOrderLoading) {
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
            }
            if (state.status.isPastOrderSuccess && state.orders.isNotEmpty) {
              return FadedSlideAnimation(
                beginOffset: const Offset(0, 0.3),
                endOffset: const Offset(0, 0),
                slideCurve: Curves.linearToEaseOut,
                child: ListView.builder(
                  itemCount: state.orders.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final order = state.orders[index];
                    return ShopperItem(
                      orderEntity: order,
                    );
                  },
                ),
              );
            }
            return BlankContent(
              onPressed: () => orderBloc.add(const ShopperPastGetOrders()),
            );
          },
        ),
      ),
    );
  }
}
