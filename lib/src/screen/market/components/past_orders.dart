import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/market_item.dart';

class PastOrdersScreen extends StatelessWidget {
  const PastOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supBloc = context.read<SuppliersBloc>();
    return StartupContainer(
      onInit: () async {
        supBloc.add(const SPastOrders());
      },
      onDisposed: () async {
        supBloc.add(const SPastOrdersReset());
      },
      child:
          BlocBuilder<SuppliersBloc, SuppliersState>(builder: (context, state) {
        if (state.pastStatus.isPastOrdersLoading) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      SpaceH16(),
                      Text(
                        'Loading past orders...',
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
            ),
          );
        }
        if (state.pastStatus.isPastOrdersSuccess &&
            state.pastOrders.isNotEmpty) {
          return FadedSlideAnimation(
            beginOffset: const Offset(0, 0.3),
            endOffset: const Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
            child: ListView.separated(
              itemCount: state.pastOrders.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              itemBuilder: (context, index) {
                final item = state.pastOrders[index];
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
        if (state.pastStatus.isPastOrdersError) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  state.pastOrdersMessage ??
                      'Sorry could not load past orders.',
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
          content: 'No Past Order',
        );
      }),
    );
  }
}
