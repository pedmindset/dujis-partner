import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class SupportPage extends StatelessWidget {
  static const String id = 'support_page';
  final String? number;

  const SupportPage({super.key, this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leading: const BackButton(color: Colors.black),
        title: Text(AppLocalizations.of(context)!.support!,
            style: Theme.of(context).textTheme.bodyLarge),
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: Stack(
          children: [
            ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 48.0),
                  color: Theme.of(context).cardColor,
                  child: FadedScaleAnimation(
                    fadeDuration: const Duration(milliseconds: 400),
                    child: const Image(
                      image: AssetImage(
                          "assets/images/logo/app_logo.png"), //delivoo logo
                      height: 130.0,
                      width: 99.7,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 24.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: Text(
                          AppLocalizations.of(context)!.orWrite!,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
                        child: Text(
                          AppLocalizations.of(context)!.yourWords!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      EntryField(
                        image: 'assets/icons/ic_phone.png',
                        label: AppLocalizations.of(context)!.mobileNumber,
                        initialValue: '+1 987 654 3210',
                        readOnly: true,
                      ),
                      EntryField(
                        image: 'assets/icons/ic_mail.png',
                        label: AppLocalizations.of(context)!.message,
                        hint: AppLocalizations.of(context)!.enterMessage,
                        maxLines: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            PositionedDirectional(
              bottom: 0,
              start: 0,
              end: 0,
              child: BottomBar(
                text: AppLocalizations.of(context)!.submit,
                onTap: () {
                  /*............*/
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
