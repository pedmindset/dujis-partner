import 'package:dujis_partner/core/utils/utils.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'login_navigator.dart';

class SocialLogIn extends StatefulWidget {
  const SocialLogIn({super.key});

  @override
  State<SocialLogIn> createState() => _SocialLogInState();
}

class _SocialLogInState extends State<SocialLogIn> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            automaticallyImplyLeading: true,
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  Text(
                    AppLocalizations.of(context)!.hey!,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: EntryField(
                      controller: _controller,
                      label: AppLocalizations.of(context)!.mobileNumber,
                      image: 'assets/icons/ic_phone.png',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 44.0),
                    child: Text(
                      AppLocalizations.of(context)!.verificationText!,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 12.8),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(
                  text: AppLocalizations.of(context)!.continueText,
                  onTap: () {
                    Navigator.pushNamed(context, LoginRoutes.verification);
                  }),
            )
          ],
        ));
  }
}
