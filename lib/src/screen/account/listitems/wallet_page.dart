import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: Text(
          AppLocalizations.of(context)!.wallet!,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        titleSpacing: 0.0,
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: const Wallet(),
      ),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context)!.availableBalance!,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            letterSpacing: 0.67,
                            color: dujisHintColor,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '\$ 758.50',
                        style: listTitleTextStyle.copyWith(
                            fontSize: 35.0,
                            color: dujisMainColor,
                            letterSpacing: 0.18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40.0,
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context)!.recent!,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: dujisTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.08),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Order num 212217',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10.0),
                      Text('3 items | 30 June 2018, 11.59 am',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$80.00',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.online!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$5.20',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.earnings!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Order num 232313',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10.0),
                      Text('2 items | 30 June 2018, 10.23 am',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$110.00',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.online!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$9.50',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.earnings!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.sendToBank!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10.0),
                      Text('29 June 2018, 09.12 am',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '-\$100.00',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.sendToBank!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 3.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Order num 212217',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10.0),
                      Text('3 items | 30 June 2018, 11.59 am',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$80.00',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.online!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$5.20',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.earnings!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Order num 232313',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10.0),
                      Text('2 items | 30 June 2018, 10.23 am',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$110.00',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.online!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '\$9.50',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.earnings!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.sendToBank!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10.0),
                      Text('29 June 2018, 09.12 am',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '-\$100.00',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 10.0),
                      Text(AppLocalizations.of(context)!.sendToBank!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: dujisTextColor, fontSize: 11.7)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 3.0,
            ),
          ],
        ),
        Positioned.directional(
          textDirection: Directionality.of(context),
          top: 70.0,
          end: 20.0,
          child: Container(
            height: 46.0,
            width: 134.0,
            color: dujisMainColor,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: dujisMainColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, PageRoutes.addToBank),
              child: Text(
                AppLocalizations.of(context)!.sendToBank!,
                style: bottomBarTextStyle.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
