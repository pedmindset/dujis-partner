import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _isInit = false;

  @override
  void didChangeDependencies() {
    _initialize();
    super.didChangeDependencies();
  }

  void _initialize() async {
    if (!_isInit) {
      await Future.delayed(const Duration(milliseconds: 500));
      if (!mounted) {
        return;
      }

      // if (PreferenceUtils.getInt(prefUserId) == 0) {
      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //       content: Text('Please something went wrong. Re-login again.')));

      //   PreferenceUtils.clear();
      //   Navigator.pushReplacementNamed(context, PageRoutes.loginNavigator);
      // } else {
      PreferenceUtils.getBool(prefLoggedIn) &&
              PreferenceUtils.getString(prefAuthKey) != 'null' &&
              PreferenceUtils.getString(prefAuthKey).isNotEmpty
          ? (PreferenceUtils.getBool(prefIsShopper)
              ? Navigator.pushReplacementNamed(context, PageRoutes.shopperPage)
              : Navigator.pushReplacementNamed(
                  context, PageRoutes.supplierPage))
          : Navigator.pushReplacementNamed(context, PageRoutes.loginNavigator);
    }

    _isInit = true;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
