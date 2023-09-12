import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'register_page';
  final String? phoneNumber;

  const ProfilePage({super.key, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: RegisterForm(phoneNumber),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  final String? phoneNumber;

  const RegisterForm(this.phoneNumber, {super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Feature Image'.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: dujisHintColor),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 99.0,
                        width: 99.0,
                        child: Image.asset('assets/images/other/layer_1.png'),
                      ),
                      const SizedBox(width: 24.0),
                      Icon(
                        Icons.camera_alt,
                        color: dujisMainColor,
                        size: 19.0,
                      ),
                      const SizedBox(width: 14.3),
                      Text(
                        'Upload Photo',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: dujisMainColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    'profile Info'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: dujisHintColor),
                  ),
                ),
                //name textField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: 'full Name'.toUpperCase(),
                    initialValue: 'Store',
                  ),
                ),
                //category textField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    suffixIcon: const Icon(Icons.keyboard_arrow_down),
                    textCapitalization: TextCapitalization.words,
                    label: 'Category'.toUpperCase(),
                    initialValue: 'Vegetable',
                  ),
                ),
                //phone textField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    label: 'mobile Number'.toUpperCase(),
                    initialValue: '+1 987 654 3210',
                    readOnly: true,
                  ),
                ),
                //email textField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textCapitalization: TextCapitalization.none,
                    label: 'email Address'.toUpperCase(),
                    initialValue: 'storename@email.com',
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    'address'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: dujisHintColor),
                  ),
                ),
                //address textField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    onTap: () =>
                        Navigator.pushNamed(context, PageRoutes.locationPage),
                    textCapitalization: TextCapitalization.words,
                    readOnly: true,
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: dujisMainColor,
                      size: 16.0,
                    ),
                    initialValue:
                        '1124, Veggy Garden, Union Market, United States ',
                  ),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    'store Timings'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: dujisHintColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          initialValue: '8:00 am',
                          label: 'openingTime'.toUpperCase(),
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: 'closing Time'.toUpperCase(),
                          initialValue: '9:00 pm',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80.0,
                )
              ],
            ),
            //continue button bar
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
              text: 'Update Info',
              onTap: () {
                Navigator.pushNamed(context, PageRoutes.accountPage);
              }),
        ),
      ],
    );
  }
}
