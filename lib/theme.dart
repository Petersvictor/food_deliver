import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_ui/constants.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode =  ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kScaffoldColorLight,
    textSelectionColor: kTextColorLight,
    hintColor: kTextFaintColorLight,
    cardColor: kScaffoldColorLight,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kTextFaintColorLight),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kTextColorLight),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kBoxColorDark,
      surface: kBoxColorLight
    )
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    textSelectionColor: kTextColorDark,
    hintColor: kTextFaintColorDark,
    cardColor: kBoxColorDark,
    scaffoldBackgroundColor: kScaffoldColorDark,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kTextFaintColorDark),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kTextColorDark),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kTextFaintColorDark,
      surface: kBoxColorDark
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0, );