import 'package:flutter/material.dart';
import 'package:test_themed/theme/theme_app.dart';
import 'package:themed/themed.dart';

import 'home_page/home_page.dart';
import 'routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Themed(
      child: MaterialApp(
        title: 'Themed - Testing',
        theme: ThemeData(
          primaryColor: ThemeApp.primary,
          appBarTheme: const AppBarTheme(
            backgroundColor: ThemeApp.primary,
            foregroundColor: ThemeApp.onPrimary,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: ThemeApp.primary, onPrimary: ThemeApp.onPrimary),
          ),
        ),
        // Primeira situação o themed NAO atualiza o theme da pagina home. Mas o theme da second_page sim.
        navigatorKey: navigatorKey,
        routes: Routes.routes,
        initialRoute: '/',
        // Segunda situação o themed atualiza perfeitamente o theme das paginas
        // home: const HomePage(),
      ),
    );
  }
}
