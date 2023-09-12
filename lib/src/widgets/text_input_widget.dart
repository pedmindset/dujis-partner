import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'spaces.dart';

/// text input widget
class TextInputWidget extends StatelessWidget {
  ///
  const TextInputWidget(
      {super.key,
      required this.inputText,
      this.hintText,
      this.label,
      this.readOnly,
      this.onTap,
      this.obscure,
      this.keyboardType,
      this.textCapitalization,
      this.maxLength,
      this.validator});

  ///
  final TextEditingController inputText;
  final TextCapitalization? textCapitalization;

  ///
  final String? hintText;
  final int? maxLength;

  ///
  final String? label;
  final bool? readOnly;
  final bool? obscure;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: GoogleFonts.roboto(fontSize: 14),
          ),
        if (label != null) const SpaceH8(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: dujisAccentColor,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: TextFormField(
            controller: inputText,
            readOnly: readOnly ?? false,
            onTap: onTap,
            obscureText: obscure ?? false,
            maxLength: maxLength,
            validator: validator,
            keyboardType: keyboardType ?? TextInputType.name,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 14, color: Colors.black38),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
