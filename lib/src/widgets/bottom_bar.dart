import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomBar extends StatelessWidget {
  final Function onTap;
  final String? text;
  final Color? color;
  final Color? textColor;

  const BottomBar(
      {super.key,
      required this.onTap,
      required this.text,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        color: color ?? dujisMainColor,
        height: 60.0,
        child: Center(
          child: Text(
            text!,
            style: textColor != null
                ? bottomBarTextStyle.copyWith(color: textColor)
                : bottomBarTextStyle,
          ),
        ),
      ),
    );
  }
}
