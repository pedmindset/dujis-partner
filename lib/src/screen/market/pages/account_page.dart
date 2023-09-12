// import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/theme/colors.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:dujis_partner/src/widgets/spaces.dart';
import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';
import '../../account/account_page.dart';

class MarketAccountPage extends StatelessWidget {
  const MarketAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: dujisMainBackColor,
          title: Text(
            'Account',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
          ),
        ),
      ),
      body: const MarketAccountBody(),
    );
  }
}

class MarketAccountBody extends StatefulWidget {
  const MarketAccountBody({super.key});

  @override
  State<MarketAccountBody> createState() => _MarketAccountBodyState();
}

class _MarketAccountBodyState extends State<MarketAccountBody> {
  String? number;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage(
            //     "assets/images/other/layer_1.png",
            //   ),
            //   fit: BoxFit.cover,
            // ),
            color: dujisMainBackColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/other/layer_1.png'),
                  ),
                ),
              ),
              const SpaceH16(),
              Text(
                PreferenceUtils.getString(prefUserName),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
              const SpaceH4(),
              Text(
                PreferenceUtils.getString(prefUserEmail),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white.withOpacity(0.52),
                      fontSize: 12,
                    ),
              ),
            ],
          ),
        ),
        // Divider(
        //   color: Theme.of(context).cardColor,
        //   thickness: 8.0,
        // ),
        // BuildListTile(
        //     image: 'assets/images/account/ic_menu_insight.png',
        //     text: 'Insight',
        //     onTap: () => Navigator.pushNamed(context, PageRoutes.insightPage)),
        // BuildListTile(
        //   image: 'assets/images/account/ic_menu_wallet.png',
        //   text: 'Wallet',
        //   onTap: () => Navigator.pushNamed(context, PageRoutes.walletPage),
        // ),
        // BuildListTile(
        //     image: 'assets/images/account/ic_menu_reviewact.png',
        //     text: 'Review',
        //     onTap: () => Navigator.pushNamed(context, PageRoutes.review)),
        BuildListTile(
            image: 'assets/images/account/ic_menu_tncact.png',
            text: 'Terms and Conditionsn',
            onTap: () => Navigator.pushNamed(context, PageRoutes.tncPage)),
        BuildListTile(
            image: 'assets/images/account/ic_menu_supportact.png',
            text: 'Support',
            onTap: () => Navigator.pushNamed(context, PageRoutes.supportPage,
                arguments: number)),
        // BuildListTile(
        //     image: 'assets/images/account/ic_menu_setting.png',
        //     text: 'Settings',
        //     onTap: () => Navigator.pushNamed(context, PageRoutes.setting,
        //         arguments: number)),
        const LogoutTile(),
      ],
    );
  }
}
