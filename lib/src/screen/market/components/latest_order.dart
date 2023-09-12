import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/market_item.dart';

class LatestOrdersScreen extends StatelessWidget {
  const LatestOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supBloc = context.read<SuppliersBloc>();
    return StartupContainer(
      onInit: () async {
        supBloc.add(const SLatestOrders());
      },
      onDisposed: () async {
        supBloc.add(const SLatestOrdersReset());
      },
      child:
          BlocBuilder<SuppliersBloc, SuppliersState>(builder: (context, state) {
        if (state.latestStatus.isLatestOrdersLoading) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  children: const [
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
            child: ListView.separated(
              itemCount: state.latestOrders.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              itemBuilder: (context, index) {
                final item = state.latestOrders[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                  state.latestOrdersMessage ?? 'Sorry could not load orders.',
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
    );
  }
}
