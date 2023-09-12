import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../widgets/spaces.dart';

class MarketItem extends StatelessWidget {
  const MarketItem({
    super.key,
    this.kPadding,
    required this.item,
  });

  final double? kPadding;
  final OrderEntity item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Navigator.push<void>(
      //   context,
      //   MaterialPageRoute<OrderTileDetail>(
      //     builder: (BuildContext context) => const OrderTileDetail(),
      //   ),
      // ),
      child: FadedScaleAnimation(
        child: DecoratedBox(
          decoration: BoxDecoration(color: dujisWhiteColor),
          child: Padding(
            padding: EdgeInsets.all(kPadding ?? 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ref: #${item.code}',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${item.amount}',
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SpaceH8(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.createdAt!,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 10,
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.yellow[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8),
                        child: Text(
                          item.status!,
                          style: TextStyle(
                              color: Colors.yellow[900],
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  indent: 4,
                ),
                const SpaceH8(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.black26,
                        ),
                        const SpaceW8(),
                        Text(
                          item.user != null ? item.user!.name! : 'N/A',
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    // Row(
                    //   children: const [
                    //     Icon(
                    //       Icons.production_quantity_limits_rounded,
                    //       color: Colors.black26,
                    //     ),
                    //     SpaceW8(),
                    //     Text(
                    //       'Onions',
                    //       style: TextStyle(
                    //         color: Colors.black87,
                    //         fontSize: 12,
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
