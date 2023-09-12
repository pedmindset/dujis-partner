import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import '../../widgets/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
      ),
      body: const Account(),
    );
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String? number;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const StoreDetails(),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        // BuildListTile(
        //     image: 'assets/images/account/ic_menu_reviewact.png',
        //     text: 'Review',
        //     onTap: () => Navigator.pushNamed(context, PageRoutes.review)),
        BuildListTile(
            image: 'assets/images/account/ic_menu_tncact.png',
            text: 'Terms and Conditions',
            onTap: () => Navigator.pushNamed(context, PageRoutes.tncPage)),
        BuildListTile(
            image: 'assets/images/account/ic_menu_supportact.png',
            text: 'Support',
            onTap: () => Navigator.pushNamed(context, PageRoutes.supportPage,
                arguments: number)),
        BuildListTile(
            image: 'assets/images/account/ic_menu_setting.png',
            text: 'Settings',
            onTap: () => Navigator.pushNamed(context, PageRoutes.setting,
                arguments: number)),
        const LogoutTile(),
      ],
    );
  }
}

class LogoutTile extends StatelessWidget {
  const LogoutTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildListTile(
      image: 'assets/images/account/ic_menu_logoutact.png',
      text: 'Logout',
      onTap: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Logging out'),
                content: const Text('Are you sure'),
                actions: [
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: dujisTransparentColor)),
                    ),
                    child: Text(
                      'No',
                      style: TextStyle(
                        color: dujisMainColor,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: dujisTransparentColor)),
                    ),
                    onPressed: () {
                      PreferenceUtils.clear();
                      Phoenix.rebirth(context);
                    },
                    child: Text(
                      'Yes',
                      style: TextStyle(
                        color: dujisMainColor,
                      ),
                    ),
                  ),
                ],
              );
            });
      },
    );
  }
}

class StoreDetails extends StatelessWidget {
  const StoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          FadedScaleAnimation(
            fadeDuration: const Duration(milliseconds: 400),
            child: const Image(
              image:
                  AssetImage("assets/images/other/layer_1.png"), //delivoo logo
              height: 98.0,
              width: 98.0,
            ),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                PreferenceUtils.getString(prefUserName),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: dujisLightTextColor,
                    size: 9.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    PreferenceUtils.getString(prefUserEmail),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: const Color(0xff4a4b48), fontSize: 13.3),
                  ),
                ],
              ),

              // GestureDetector(
              //     child: Text(
              //       '\n Store Profile',
              //       style: TextStyle(
              //           color: dujisMainColor,
              //           fontSize: 13.3,
              //           fontWeight: FontWeight.w500),
              //     ),
              //     onTap: () =>
              //         Navigator.pushNamed(context, PageRoutes.storeProfile)),
              //  Text(email, style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
        ],
      ),
    );
  }
}
