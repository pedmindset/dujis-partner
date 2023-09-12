import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../login_navigator.dart';
import 'mobile_input.dart';

//first page that takes phone number as input for verification
class PhoneNumber extends StatefulWidget {
  static const String id = 'phone_number';

  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: SingleChildScrollView(
          //used for scrolling when keyboard pops up
          child: Container(
            color: Theme.of(context).cardColor,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Spacer(),
                FadedScaleAnimation(
                  scaleDuration: const Duration(milliseconds: 400),
                  child: Image.asset(
                    "assets/images/logo/app_logo.png",
                    scale: 2,
                    width: 100,
                    height: 100,
                    //delivoo logo
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images/logo/seller.png", //footer image
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: MobileInput(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 32.0,
                    color: Theme.of(context).cardColor,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.or!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, LoginRoutes.social),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    color: const Color(0xff3a559f),
                    child: Row(
                      children: [
                        const Spacer(),
                        Image.asset(
                          'assets/images/other/ic_login_facebook.png',
                          height: 19.0,
                          width: 19.7,
                        ),
                        const SizedBox(
                          width: 34.0,
                        ),
                        Text(AppLocalizations.of(context)!.continueWith!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: dujisWhiteColor)),
                        Text(AppLocalizations.of(context)!.facebook!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: dujisWhiteColor,
                                    fontWeight: FontWeight.bold)),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, LoginRoutes.social),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    color: dujisWhiteColor,
                    child: Row(
                      children: [
                        const Spacer(),
                        Image.asset('assets/images/other/ic_login_google.png',
                            height: 19.0, width: 19.7),
                        const SizedBox(
                          width: 34.0,
                        ),
                        Text(
                          AppLocalizations.of(context)!.continueWith!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: dujisMainTextColor),
                        ),
                        Text(AppLocalizations.of(context)!.google!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: dujisMainTextColor)),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, LoginRoutes.social),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    color: const Color(0xff000000),
                    child: Row(
                      children: [
                        const Spacer(),
                        Image.asset('assets/images/other/ic_login_apple.png',
                            height: 19.0, width: 19.7),
                        const SizedBox(
                          width: 34.0,
                        ),
                        Text(AppLocalizations.of(context)!.continueWith!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: dujisWhiteColor)),
                        Text(AppLocalizations.of(context)!.apple!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: dujisWhiteColor,
                                    fontWeight: FontWeight.bold)),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
