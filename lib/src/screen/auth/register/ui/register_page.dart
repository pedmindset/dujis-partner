import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:dujis_partner/src/screen/auth/login_navigator.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

//register page for registration of a new user
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          AppLocalizations.of(context)!.register!,
          style:
              Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: const RegisterForm(),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  // RegisterBloc _registerBloc;

  @override
  void initState() {
    super.initState();
    // _registerBloc = BlocProvider.of<RegisterBloc>(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          children: [
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            //name textField
            EntryField(
              textCapitalization: TextCapitalization.words,
              // controller: _nameController,
              label: AppLocalizations.of(context)!.fullName!.toUpperCase(),
              image: 'assets/icons/ic_name.png',
              initialValue: 'Samantha Smith',
            ),
            //email textField
            EntryField(
              textCapitalization: TextCapitalization.none,
              //controller: _emailController,
              label: AppLocalizations.of(context)!.emailAddress!.toUpperCase(),
              image: 'assets/icons/ic_mail.png',
              keyboardType: TextInputType.emailAddress,
              initialValue: 'samanthasmith@mail.com',
            ),

            //phone textField
            EntryField(
              label: AppLocalizations.of(context)!.mobileNumber!.toUpperCase(),
              image: 'assets/icons/ic_phone.png',
              keyboardType: TextInputType.number,
              initialValue: '+1 987 654 3210',
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                AppLocalizations.of(context)!.verificationText!,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 12.8),
              ),
            ),
          ],
        ),
        PositionedDirectional(
          bottom: 0,
          start: 0,
          end: 0,
          child: BottomBar(
              text: AppLocalizations.of(context)!.continueText,
              onTap: () {
                Navigator.pushNamed(context, LoginRoutes.verification);
              }),
        )
      ],
    );
  }
}
