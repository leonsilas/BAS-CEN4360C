import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.dark, 
    primaryColor: aPrimaryColor,
    scaffoldBackgroundColor: aMainColorLight,
    //appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: aMainColorLight),
    colorScheme: ColorScheme.light(
      primary: aPrimaryColor,
      secondary: aSecondaryColor,
      error: aErrorColor,
    ),
  );
}//end of lightTheme

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark, 
    primaryColor: aPrimaryColor,
    scaffoldBackgroundColor: aMainColorDark,
    //appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: aMainColorDark),
    colorScheme: ColorScheme.dark(
      primary: aPrimaryColor,
      secondary: aSecondaryColor,
      error: aErrorColor,
    ),
  );
}//end of DarkTheme
