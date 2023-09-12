import 'package:dujis_partner/core/bloc/blocs.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/src/screen/startup_container.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssignMarketScreen extends StatelessWidget {
  const AssignMarketScreen(
      {super.key, required this.productEntity, required this.orderId});

  final int orderId;
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    final suppliersBloc = context.read<ShoppersBloc>();
    return StartupContainer(
      onInit: () {
        final request = SupplierRequest(product: productEntity.id.toString());
        suppliersBloc.add(GetSuppliers(request));
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            leading: const BackButton(color: Colors.black),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '${productEntity.name}',
                    overflow: TextOverflow.clip,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 16, letterSpacing: 0.07),
                  ),
                ),
                // Text(
                //   '0.5 kg/₵ 300',
                //   style: Theme.of(context)
                //       .textTheme
                //       .headlineSmall!
                //       .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                // ),
              ],
            ),
          ),
        ),
        body: BlocConsumer<ShoppersBloc, ShoppersState>(
          listener: (context, state) {
            if (state.assignStatus.isAssignSuccess) {
              int count = 0;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green[100],
                  content: Text(
                    'Order Assigned',
                    style: TextStyle(color: dujisMainBackColor),
                  ),
                ),
              );
              Navigator.of(context).popUntil((_) => count++ >= 2);
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SpaceH16(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Suppliers',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 16, letterSpacing: 0.07),
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 4.0,
                ),
                state.suppliersStatus.isSupplierLoading
                    ? const Center(
                        child: Column(
                          children: [
                            CircularProgressIndicator(),
                            SpaceH20(),
                            Text(
                              'Fetching suppliers, please wait...',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      )
                    : (state.suppliersStatus.isSupplierSuccess &&
                            state.suppliers.isNotEmpty
                        ? Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              separatorBuilder: (context, i) {
                                return Divider(
                                  color: Theme.of(context).cardColor,
                                  thickness: 8.0,
                                );
                              },
                              itemBuilder: (context, index) {
                                final supplier = state.suppliers[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        supplier.name!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                fontSize: 16,
                                                letterSpacing: 0.07),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Text(
                                              supplier.type!.toUpperCase(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall!
                                                  .copyWith(
                                                      fontSize: 16,
                                                      letterSpacing: 0.07),
                                            ),
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Icon(
                                          //       Icons.shopping_cart_rounded,
                                          //       color: Colors.orange[800],
                                          //     ),
                                          //     Text(
                                          //       '54 orders fullfilled',
                                          //       style: Theme.of(context)
                                          //           .textTheme
                                          //           .headlineSmall!
                                          //           .copyWith(fontSize: 14, letterSpacing: 0.07),
                                          //     )
                                          //   ],
                                          // ),
                                          InkWell(
                                            onTap: () {
                                              final request = AssignedRequest(
                                                  order: orderId.toString(),
                                                  product: productEntity.id
                                                      .toString(),
                                                  supplier:
                                                      supplier.id.toString());
                                              suppliersBloc
                                                  .add(AssignSupplier(request));
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 12),
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  suppliersBloc
                                                          .state
                                                          .assignStatus
                                                          .isAssignLoading
                                                      ? 'Loading...'
                                                      : 'Assign',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium!
                                                      .copyWith(
                                                          fontSize: 14,
                                                          letterSpacing: 0.07),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SpaceH8(),
                                    ],
                                  ),
                                );
                              },
                              itemCount: state.suppliers.length,
                            ),
                          )
                        : const BlankContent()),
                const SpaceH16(),
              ],
            );
          },
        ),
      ),
    );
  }
}
