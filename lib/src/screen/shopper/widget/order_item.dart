import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:flutter/material.dart';

import 'package:dujis_partner/core/utils/utils.dart';

import '../components/orderinfo_page.dart';

class ShopperItem extends StatelessWidget {
  const ShopperItem({super.key, required this.orderEntity});

  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 4.0,
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => OrderInfo(
                orderEntity: orderEntity,
              ),
            ),
          ),
          child: ListTile(
            leading: FadedScaleAnimation(
              scaleDuration: const Duration(milliseconds: 400),
              child: Image.asset(
                'assets/images/other/user.png',
                scale: 2.5,
                width: 33.7,
                height: 42.3,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${orderEntity.user != null ? orderEntity.user!.name : 'N/A'} \n",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                ),
                Text(
                  '${DateTime.parse(orderEntity.createdAt!).toLocal()}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 11.7,
                        letterSpacing: 0.06,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '₵ ${orderEntity.amount}\n',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                ),
                Text(
                  AppLocalizations.of(context)!.cod!,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 11.7,
                        letterSpacing: 0.06,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 1.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Row(
            children: <Widget>[
              const Spacer(),
              Text(
                'Ref: #${orderEntity.code}',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 11.7,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.06,
                      color: const Color(0xff393939),
                    ),
              ),
              const Spacer(),
              Text(
                'Line Items: ${orderEntity.products!.length}',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 11.7,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.06,
                      color: const Color(0xff393939),
                    ),
              ),
              const Spacer(),
              Text('${orderEntity.status}'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: const Color(0xffffa025),
                      fontWeight: FontWeight.bold,
                      fontSize: 11.7,
                      letterSpacing: 0.06)),
            ],
          ),
        ),
      ],
    );
    // return Column(children: [
    //   Divider(
    //     color: Theme.of(context).cardColor,
    //     thickness: 1.0,
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
    //     child: Row(
    //       children: <Widget>[
    //         const Spacer(),
    //         Text('Ref: #1107856',
    //             style: Theme.of(context).textTheme.caption!.copyWith(
    //                 fontSize: 11.7,
    //                 fontWeight: FontWeight.w500,
    //                 letterSpacing: 0.06,
    //                 color: const Color(0xff393939))),
    //         const Spacer(),
    //         Text(
    //           'Line items: 3',
    //           style: Theme.of(context).textTheme.caption!.copyWith(
    //                 fontSize: 11.7,
    //                 fontWeight: FontWeight.w500,
    //                 letterSpacing: 0.06,
    //                 color: const Color(0xff393939),
    //               ),
    //         ),
    //         const Spacer(),
    //         Text(AppLocalizations.of(context)!.pending!,
    //             style: Theme.of(context).textTheme.headline4!.copyWith(
    //                 color: const Color(0xffffa025),
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 11.7,
    //                 letterSpacing: 0.06)),
    //       ],
    //     ),
    //   )
    // ]);
  }
}
