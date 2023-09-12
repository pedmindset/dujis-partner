import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

class TncPage extends StatelessWidget {
  const TncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leading: const BackButton(color: Colors.black),
        title: Text(AppLocalizations.of(context)!.tnc!,
            style: Theme.of(context).textTheme.bodyLarge),
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(48.0),
                  color: Theme.of(context).cardColor,
                  child: const Image(
                    image: AssetImage("assets/images/logo/app_logo.png"),
                    height: 130.0,
                    width: 99.7,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 28.0, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context)!.termsOfUse!,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        AppLocalizations.of(context)!.aboutBody!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        AppLocalizations.of(context)!.companyPolicy!,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        AppLocalizations.of(context)!.aboutBody!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
