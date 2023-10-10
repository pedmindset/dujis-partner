import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dujis_partner/core/utils/utils.dart';

import '../widget/line_item.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key, required this.orderEntity});

  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          leading: const BackButton(color: Colors.black),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#${orderEntity.code}',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 13.3, letterSpacing: 0.07),
              ),
              Text(
                '${orderEntity.user!.name}',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 11.7, letterSpacing: 0.06),
              ),
            ],
          ),
        ),
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Theme.of(context).cardColor,
                    thickness: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Text('Line Items',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: const Color(0xffadadad),
                                  fontWeight: FontWeight.bold)),
                    ),
                  ),
                  FadedSlideAnimation(
                    beginOffset: const Offset(0, 0.3),
                    endOffset: const Offset(0, 0),
                    slideCurve: Curves.linearToEaseOut,
                    child: ListView.builder(
                      itemCount: orderEntity.products!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final products = orderEntity.products![index];
                        return LineItem(
                          orderEntity: orderEntity,
                          productEntity: products,
                        );
                      },
                    ),
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 8.0, horizontal: 20.0),
                  //   color: Theme.of(context).scaffoldBackgroundColor,
                  //   child: Text(
                  //       AppLocalizations.of(context)!.payment!.toUpperCase(),
                  //       style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  //           color: kDisabledColor,
                  //           fontWeight: FontWeight.bold)),
                  // ),
                  // Container(
                  //   color: Theme.of(context).scaffoldBackgroundColor,
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 4.0, horizontal: 20.0),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: <Widget>[
                  //         Text(
                  //           AppLocalizations.of(context)!.sub!,
                  //           style: Theme.of(context).textTheme.bodySmall,
                  //         ),
                  //         Text(
                  //           '₵ 10.00',
                  //           style: Theme.of(context).textTheme.bodySmall,
                  //         ),
                  //       ]),
                  // ),
                  // Divider(
                  //   color: Theme.of(context).cardColor,
                  //   thickness: 1.0,
                  // ),
                  // Container(
                  //   color: Theme.of(context).scaffoldBackgroundColor,
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 4.0, horizontal: 20.0),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: <Widget>[
                  //         Text(
                  //           AppLocalizations.of(context)!.service!,
                  //           style: Theme.of(context).textTheme.bodySmall,
                  //         ),
                  //         Text(
                  //           '₵ 1.50',
                  //           style: Theme.of(context).textTheme.bodySmall,
                  //         ),
                  //       ]),
                  // ),
                  // Divider(
                  //   color: Theme.of(context).cardColor,
                  //   thickness: 1.0,
                  // ),
                  // Container(
                  //   color: Theme.of(context).scaffoldBackgroundColor,
                  //   padding: const EdgeInsets.symmetric(
                  //       vertical: 4.0, horizontal: 20.0),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: <Widget>[
                  //         Text(
                  //           AppLocalizations.of(context)!.cod!,
                  //           style: Theme.of(context)
                  //               .textTheme
                  //               .bodySmall!
                  //               .copyWith(fontWeight: FontWeight.bold),
                  //         ),
                  //         Text(
                  //           '₵ 11.50',
                  //           style: Theme.of(context).textTheme.caption,
                  //         ),
                  //       ]),
                  // ),
                  // const SizedBox(
                  //   height: 7.0,
                  // ),
                  // Container(
                  //   height: 180.0,
                  //   color: Theme.of(context).cardColor,
                  // ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    // onTap: () => Navigator.pushNamed(context, PageRoutes.track),
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: ListTile(
                        leading: FadedScaleAnimation(
                          scaleDuration: const Duration(milliseconds: 400),
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: Colors.grey[200],
                            ),
                            // child: Text(orderEntity.user!.profile.toString()),
                            child: orderEntity.user!.profile != null &&
                                    orderEntity
                                        .user!.profile!.profileImage!.isNotEmpty
                                ? CachedNetworkImage(
                                    imageUrl: orderEntity
                                        .user!.profile!.profileImage!,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  )
                                : const Icon(CupertinoIcons.person_alt),
                            // child: const Icon(CupertinoIcons.person_alt),
                            // radius: 22.0,
                            // backgroundImage:
                            //     AssetImage('assets/images/other/profile.png'),
                          ),
                        ),
                        title: Text(
                          orderEntity.user!.name!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          'Customer',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 11.7, letterSpacing: 0.06),
                        ),
                        // trailing: IconButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, PageRoutes.track);
                        //   },
                        //   icon: Icon(
                        //     Icons.navigation,
                        //     color: kMainColor,
                        //     size: 17.0,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  BottomBar(
                      text: AppLocalizations.of(context)!.ready,
                      onTap: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
