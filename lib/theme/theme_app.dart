import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

class ThemeApp {
  //color for colorScheme
  static const primary = ColorRef(Colors.orange, id: "primary");
  static const onPrimary = ColorRef(Colors.white, id: "onPrimary");
  static const primaryVariant = ColorRef(Colors.white, id: "primaryVariant");
  static const secondary = ColorRef(Colors.white, id: "secondary");
  static const onSecondary = ColorRef(Colors.white, id: "onSecondary");
  static const secondaryVariant =
      ColorRef(Colors.white, id: "secondaryVariant");
  static const background = ColorRef(Colors.white, id: "background");
  static const onBackground = ColorRef(Colors.white, id: "onBackground");
  static const surface = ColorRef(Colors.white, id: "surface");
  static const onSurface = ColorRef(Colors.white, id: "onSurface");
  static const error = ColorRef(Colors.white, id: "error");
  static const onError = ColorRef(Colors.pink, id: "onError");
  //color for ThemeData
  static const scaffoldBackgroundColor =
      ColorRef(Colors.white, id: "scaffoldBackgroundColor");
  static const backgroundPhrase =
      ColorRef(Colors.white, id: "backgroundPhrase");
  static const backgroundTitle = ColorRef(Colors.white, id: "backgroundTitle");
  static const cardColor = ColorRef(Colors.white, id: "cardColor");
  //color for especific widget
  static const colorsBlack = ColorRef(Colors.black, id: "ColorsBlack");
  // Styles
  static const headline6Changed = TextStyleRef(
    TextStyle(
      fontSize: 10,
      // fontFamily: 'Georgia',
      // fontWeight: FontWeight.w400,
      // color: ThemeApp.colorsText,
    ),
  );
  static const bodyText2Changed = TextStyleRef(
    TextStyle(
      fontSize: 14,
      // fontFamily: 'Georgia',
      // fontWeight: FontWeight.w400,
      // color: ThemeApp.colorsText,
    ),
  );
}

Map<ThemeRef, Object> darkTheme = {
  ThemeApp.primary: Colors.grey[900]!,
  ThemeApp.onPrimary: Colors.white,
  ThemeApp.primaryVariant: Colors.red,
  ThemeApp.secondary: Colors.black,
  ThemeApp.onSecondary: Colors.white,
  ThemeApp.secondaryVariant: Colors.pink,
  ThemeApp.background: Colors.white,
  ThemeApp.onBackground: Colors.red,
  ThemeApp.surface: Colors.orange,
  ThemeApp.onSurface: Colors.red,
  ThemeApp.error: Colors.red,
  ThemeApp.onError: Colors.black,
  //
  ThemeApp.scaffoldBackgroundColor: Colors.grey,
  ThemeApp.backgroundPhrase: Colors.orange.shade100,
  ThemeApp.backgroundTitle: Colors.grey.shade300,
  ThemeApp.cardColor: Colors.grey.shade300,
  // ThemeApp.ColorsBlack: Colors.black,
  ThemeApp.headline6Changed: const TextStyleRef(
    TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      // color: ThemeApp.colorsBlack,
    ),
  ),
  ThemeApp.bodyText2Changed: const TextStyleRef(
    TextStyle(
      fontSize: 14,
      fontFamily: 'Fruktur',
      // fontWeight: FontWeight.w400,
      // color: ThemeApp.colorsBlack,
    ),
  ),
};
Map<ThemeRef, Object> orangeTheme = {
  ThemeApp.primary: Colors.orange,
  ThemeApp.onPrimary: Colors.black,
  ThemeApp.primaryVariant: Colors.red,
  ThemeApp.secondary: Colors.deepOrange,
  ThemeApp.onSecondary: Colors.black,
  ThemeApp.secondaryVariant: Colors.orange,
  ThemeApp.background: Colors.green,
  ThemeApp.onBackground: Colors.black,
  ThemeApp.surface: Colors.orange,
  ThemeApp.onSurface: Colors.black,
  ThemeApp.error: Colors.red,
  ThemeApp.onError: Colors.white,
  //
  ThemeApp.scaffoldBackgroundColor: Colors.white,
  ThemeApp.backgroundPhrase: Colors.orange.shade100,
  ThemeApp.backgroundTitle: Colors.grey.shade300,
  ThemeApp.cardColor: Colors.white,
  //
  ThemeApp.headline6Changed: const TextStyleRef(
    TextStyle(
      fontSize: 30,
      // fontFamily: 'Georgia',
      // fontWeight: FontWeight.w400,
      // color: ThemeApp.colorsText,
    ),
  ),
};

class ThemeDataApp {
  ThemeData get themeData {
    // for (var item in orangeTheme.entries) {
    //   print('${item.key}');
    // }

    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    // TextTheme txtTheme =
    //     (ThemeData.estimateBrightnessForColor(ThemeApp.primary) ==
    //                 Brightness.dark
    //             ? ThemeData.dark()
    //             : ThemeData.light())
    //         .textTheme;
    // Color txtColor = txtTheme.bodyText1!.color!;
    ColorScheme colorScheme = ColorScheme(
      brightness: ThemeData.estimateBrightnessForColor(ThemeApp.primary),
      primary: ThemeApp.primary,
      onPrimary: ThemeApp.onPrimary,
      primaryVariant: ThemeApp.primaryVariant,
      secondary: ThemeApp.secondary,
      onSecondary: ThemeApp.onSecondary,
      secondaryVariant: ThemeApp.secondaryVariant,
      background: ThemeApp.onError,
      onBackground: ThemeApp.onBackground, //txtColor,
      surface: ThemeApp.surface,
      onSurface: ThemeApp.onSurface, //txtColor,
      error: ThemeApp.error,
      onError: ThemeApp.onError,
    );
    TextTheme textTheme = const TextTheme(
      // headline1: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold),
      // headline2: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      // headline3: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
      // headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
      // headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 20.0, fontFamily: 'Georgia'),
      // subtitle1: TextStyle(fontSize: 16.0, fontFamily: 'Georgia'),
      // subtitle2: TextStyle(fontSize: 14.0, fontFamily: 'Georgia'),
      // bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Georgia'),
      // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Georgia'),
      // button: TextStyle(fontSize: 14.0, fontFamily: 'Georgia'),
      // caption: TextStyle(fontSize: 12.0, fontFamily: 'Georgia'),
      // overline: TextStyle(fontSize: 10.0, fontFamily: 'Georgia'),
    );

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var t = ThemeData.from(textTheme: textTheme, colorScheme: colorScheme)
        // We can also add on some extra properties that ColorScheme seems to miss
        .copyWith(
      scaffoldBackgroundColor: ThemeApp.scaffoldBackgroundColor,
      cardColor: ThemeApp.cardColor,
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(ThemeApp.colorsBlack))),
    );

    /// Return the themeData which MaterialApp can now use
    return t;
  }
}

// class MyAppTheme {
//   final Color bg1;
//   final Color accent1;
//   final bool isDark;

//   /// Default constructor
//   MyAppTheme({
//     required this.isDark,
//     required this.bg1,
//     required this.accent1,
//   });

//   ThemeData get themeData {
//     /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
//     TextTheme txtTheme =
//         (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
//     Color txtColor = txtTheme.bodyText1!.color!;
//     ColorScheme colorScheme = ColorScheme(
//         // Decide how you want to apply your own custom them, to the MaterialApp
//         brightness: isDark ? Brightness.dark : Brightness.light,
//         primary: accent1,
//         primaryVariant: accent1,
//         secondary: accent1,
//         secondaryVariant: accent1,
//         background: bg1,
//         surface: bg1,
//         onBackground: txtColor,
//         onSurface: txtColor,
//         onError: Colors.white,
//         onPrimary: Colors.white,
//         onSecondary: Colors.white,
//         error: Colors.red.shade400);

//     /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
//     var t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme)
//         // We can also add on some extra properties that ColorScheme seems to miss
//         .copyWith(highlightColor: accent1, toggleableActiveColor: accent1);

//     /// Return the themeData which MaterialApp can now use
//     return t;
//   }
// }
