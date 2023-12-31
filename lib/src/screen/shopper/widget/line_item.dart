import 'package:cached_network_image/cached_network_image.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:flutter/material.dart';

import '../components/assign_market.dart';

class LineItem extends StatelessWidget {
  const LineItem(
      {super.key, required this.orderEntity, required this.productEntity});

  final OrderEntity orderEntity;
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          height: 60.0,
          child: ListTile(
            onTap: () => Navigator.push<void>(
              context,
              MaterialPageRoute<AssignMarketScreen>(
                builder: (BuildContext context) => AssignMarketScreen(
                  productEntity: productEntity,
                  orderId: orderEntity.id!,
                  marketId: orderEntity.marketId!,
                ),
              ),
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: productEntity.coverPhoto!,
                width: 60,
                height: 80,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            title: Text(
              productEntity.name!,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 13.0, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              'Quantity: ${productEntity.pivot!.quantity}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Text(
              '₵ ${productEntity.pivot!.price}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 1.0,
        ),
      ],
    );
  }
}
