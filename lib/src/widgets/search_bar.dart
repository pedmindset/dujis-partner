import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String? hint;
  final Function? onTap;
  final Color? color;
  final BoxShadow? boxShadow;

  const CustomSearchBar({
    super.key,
    this.hint,
    this.onTap,
    this.color,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
      decoration: BoxDecoration(
        boxShadow: [
          boxShadow ?? BoxShadow(color: dujisCardBackgroundColor),
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: color ?? dujisCardBackgroundColor,
      ),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        cursorColor: dujisMainColor,
        decoration: InputDecoration(
          icon: const ImageIcon(
            AssetImage('assets/icons/ic_search.png'),
            color: Colors.black,
            size: 16,
          ),
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline6,
          border: InputBorder.none,
        ),
        onTap: onTap as void Function()?,
      ),
    );
  }
}
