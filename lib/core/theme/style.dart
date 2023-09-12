import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';
//app theme

final ThemeData darkTheme = ThemeData.dark().copyWith(
  //fontFamily: 'OpenSans',
  scaffoldBackgroundColor: dujisMainTextColor,
  secondaryHeaderColor: dujisWhiteColor,
  primaryColor: dujisMainColor,
  dividerColor: const Color(0x1f000000),
  disabledColor: dujisDisabledColor,
  cardColor: const Color(0xff212321),
  hintColor: dujisLightTextColor,
  indicatorColor: dujisMainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: dujisMainColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      side: BorderSide(color: dujisMainColor),
    ),
    alignedDropdown: false,
    buttonColor: dujisMainColor,
    disabledColor: dujisDisabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: dujisTransparentColor,
    elevation: 0.0,
  ),
  //text theme which contains all text styles
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
    //text style of 'Delivering almost everything' at phone_number page
    bodyLarge: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
    ),

    //text style of 'Everything.' at phone_number page
    bodyMedium: TextStyle(
      fontSize: 18.3,
      letterSpacing: 1.0,
      color: dujisDisabledColor,
    ),

    //text style of button at phone_number page
    labelLarge: TextStyle(
      fontSize: 13.3,
      color: dujisWhiteColor,
    ),

    //text style of 'Got Delivered' at home page
    headlineMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16.7,
    ),

    //text style of we'll send verification code at register page
    titleLarge: TextStyle(
      color: dujisLightTextColor,
      fontSize: 13.3,
    ),

    //text style of 'everything you need' at home page
    headlineSmall: TextStyle(
      color: dujisDisabledColor,
      fontSize: 20.0,
      letterSpacing: 0.5,
    ),

    //text entry text style
    bodySmall: const TextStyle(
      color: Colors.white,
      fontSize: 13.3,
    ),

    labelSmall: TextStyle(color: dujisLightTextColor, letterSpacing: 0.2),

    //text style of titles of card at home page
    displayMedium: const TextStyle(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    ),
    titleSmall: TextStyle(
      color: dujisLightTextColor,
      fontSize: 15.0,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: dujisMainColor),
);

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  secondaryHeaderColor: dujisMainTextColor,
  primaryColor: dujisMainColor,
  dividerColor: const Color(0x1f000000),
  disabledColor: dujisDisabledColor,
  cardColor: dujisCardBackgroundColor,
  hintColor: dujisLightTextColor,
  indicatorColor: dujisMainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: dujisMainColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        side: BorderSide(color: dujisMainColor)),
    alignedDropdown: false,
    buttonColor: dujisMainColor,
    disabledColor: dujisDisabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: dujisTransparentColor,
    elevation: 0.0,
  ),
  //text theme which contains all text styles
  textTheme: GoogleFonts.openSansTextTheme().copyWith(
    //text style of 'Delivering almost everything' at phone_number page
    bodyLarge: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
    ),

    //text style of 'Everything.' at phone_number page
    bodyMedium: TextStyle(
      fontSize: 18.3,
      letterSpacing: 1.0,
      color: dujisDisabledColor,
    ),

    //text style of button at phone_number page
    labelLarge: TextStyle(
      fontSize: 13.3,
      color: dujisWhiteColor,
    ),

    //text style of 'Got Delivered' at home page
    headlineMedium: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16.7,
    ),

    //text style of we'll send verification code at register page
    titleLarge: TextStyle(
      color: dujisLightTextColor,
      fontSize: 13.3,
    ),

    //text style of 'everything you need' at home page
    headlineSmall: TextStyle(
      color: dujisDisabledColor,
      fontSize: 20.0,
      letterSpacing: 0.5,
    ),

    //text entry text style
    bodySmall: TextStyle(
      color: dujisMainTextColor,
      fontSize: 13.3,
    ),

    labelSmall: TextStyle(color: dujisLightTextColor, letterSpacing: 0.2),

    //text style of titles of card at home page
    displayMedium: TextStyle(
      color: dujisMainTextColor,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    ),
    titleSmall: TextStyle(
      color: dujisLightTextColor,
      fontSize: 15.0,
    ),
  ),
);

//text style of continue bottom bar
final TextStyle bottomBarTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 15.0,
  color: dujisWhiteColor,
  fontWeight: FontWeight.w400,
);

//text style of text input and account page list
final TextStyle inputTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 20.0,
  color: Colors.black,
);

final TextStyle listTitleTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 16.7,
  fontWeight: FontWeight.bold,
  color: dujisMainColor,
);

final TextStyle orderMapAppBarTextStyle = GoogleFonts.openSans().copyWith(
  fontSize: 13.3,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
