import 'package:country_code_picker/country_code_picker.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../login_navigator.dart';

class MobileInput extends StatefulWidget {
  const MobileInput({super.key});

  @override
  State<MobileInput> createState() => _MobileInputState();
}

class _MobileInputState extends State<MobileInput> {
  final TextEditingController _controller = TextEditingController();
  String? isoCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CountryCodePicker(
          onChanged: (value) {
            isoCode = value.code;
          },
          builder: (value) => buildButton(value),
          initialSelection: '+1',
          textStyle: Theme.of(context).textTheme.bodySmall,
          showFlag: false,
          showFlagDialog: true,
          favorite: const ['+91', 'US'],
        ),
        const SizedBox(
          width: 10.0,
        ),
        //takes phone number as input
        Expanded(
          child: EntryField(
            controller: _controller,
            keyboardType: TextInputType.number,
            readOnly: false,
            hint: AppLocalizations.of(context)!.mobileText,
            maxLength: 10,
            border: InputBorder.none,
          ),
        ),

        //if phone number is valid, button gets enabled and takes to register screen
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Text(
              AppLocalizations.of(context)!.continueText!,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, LoginRoutes.registration);
          },
        ),
      ],
    );
  }

  buildButton(CountryCode? isoCode) {
    return Row(
      children: <Widget>[
        Text(
          '$isoCode',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
