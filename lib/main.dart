import 'package:flutter/material.dart';
import 'package:test_themed/theme/theme_app.dart';
import 'package:themed/themed.dart';

import 'home_page/home_page.dart';
import 'routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Themed(
      defaultTheme: orangeTheme,
      // currentTheme: orangeTheme,
      child: MaterialApp(
        title: 'Themed - Testing',
        theme: ThemeDataApp().themeData,
        // theme: ThemeData(

        //   // primaryColor: ThemeApp.primary,
        //   // backgroundColor: ThemeApp.background,
        //   scaffoldBackgroundColor: ThemeApp.scaffoldBackgroundColor,
        //   cardColor: ThemeApp.cardColor,
        //   textTheme: const TextTheme(
        //     button: TextStyle(color: ThemeApp.onError),
        //   ),
        //   textButtonTheme: TextButtonThemeData(
        //       style: ButtonStyle(
        //           foregroundColor:
        //               MaterialStateProperty.all<Color>(ThemeApp.colorsBlack))),

        //   colorScheme: ColorScheme(
        //     brightness: ThemeData.estimateBrightnessForColor(ThemeApp.primary),
        //     primary: ThemeApp.primary,
        //     onPrimary: ThemeApp.onPrimary,
        //     primaryVariant: ThemeApp.primaryVariant,
        //     secondary: ThemeApp.secondary,
        //     onSecondary: ThemeApp.onSecondary,
        //     secondaryVariant: ThemeApp.secondaryVariant,
        //     background: ThemeApp.onError,
        //     onBackground: ThemeApp.onBackground,
        //     surface: ThemeApp.surface,
        //     onSurface: ThemeApp.onSurface,
        //     error: ThemeApp.error,
        //     onError: ThemeApp.onError,
        //   ),
        // ),
        // theme: MyAppTheme(
        //         accent1: ThemeApp.primary,
        //         bg1: ThemeApp.background,
        //         isDark: isDark)
        //     .themeData,
        // theme: ThemeData(
        //   // primaryColor: ThemeApp.primary,
        //   // brightness: isDark ? Brightness.dark : Brightness.light,
        //   textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
        //   colorScheme: ColorScheme(
        //     brightness: ThemeData.estimateBrightnessForColor(ThemeApp.primary),
        //     // Decide how you want to apply your own custom them, to the MaterialApp
        //     // brightness: isDark ? Brightness.dark : Brightness.light,
        //     primary: ThemeApp.primary,
        //     primaryVariant: ThemeApp.primaryVariant,
        //     secondary: ThemeApp.secondary,
        //     secondaryVariant: ThemeApp.secondaryVariant,
        //     background: ThemeApp.background,
        //     surface: ThemeApp.surface,
        //     onBackground: ThemeApp.onBackground,
        //     onSurface: ThemeApp.onSurface,
        //     onError: ThemeApp.onError,
        //     onPrimary: ThemeApp.onPrimary,
        //     onSecondary: ThemeApp.onSecondary,
        //     error: ThemeApp.error,
        //   ),
        //   // appBarTheme: const AppBarTheme(
        //   //   backgroundColor: ThemeApp.primary,
        //   //   foregroundColor: ThemeApp.onPrimary,
        //   // ),
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //         primary: ThemeApp.primary, onPrimary: ThemeApp.onPrimary),
        //   ),
        // ),
        // Primeira situação o themed NAO atualiza o theme da pagina home. Mas o theme da second_page sim.
        // navigatorKey: navigatorKey,
        // routes: Routes.routes,
        // initialRoute: '/',
        // Segunda situação o themed atualiza perfeitamente o theme das paginas
        home: const HomePage(),
      ),
    );
  }
}
