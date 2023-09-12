import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? image;
  final String? initialValue;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final String? hint;
  final InputBorder? border;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function? onTap;
  final TextCapitalization? textCapitalization;
  final bool? obscureText;
  final String? Function(String?)? validator;

  const EntryField({
    super.key,
    this.controller,
    this.label,
    this.image,
    this.initialValue,
    this.readOnly,
    this.keyboardType,
    this.maxLength,
    this.hint,
    this.border,
    this.maxLines,
    this.suffixIcon,
    this.onTap,
    this.textCapitalization,
    this.prefixIcon,
    this.obscureText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: TextFormField(
        textCapitalization: textCapitalization ?? TextCapitalization.sentences,
        cursorColor: dujisMainColor,
        onTap: onTap as void Function()?,
        autofocus: false,
        controller: controller,
        // initialValue: initialValue,
        style: Theme.of(context).textTheme.bodySmall,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        minLines: 1,
        maxLength: maxLength,
        maxLines: obscureText != null && obscureText == true ? 1 : maxLines,
        obscureText: obscureText ?? false,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: label,
          hintText: hint,
          border: border,
          counter: const Offstage(),
          icon: (image != null)
              ? ImageIcon(
                  AssetImage(image!),
                  color: dujisMainColor,
                  size: 20.0,
                )
              : null,
        ),
      ),
    );
  }
}
