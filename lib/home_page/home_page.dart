import 'package:flutter/material.dart';
import 'package:test_themed/theme/theme_app.dart';
import 'package:themed/themed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Themed - home',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second_page',
                );
              },
              icon: const Icon(Icons.looks_two_outlined),
              label: const Text('Go second page.'),
            ),
            ElevatedButton(
              onPressed: () {
                if (Themed.ifCurrentThemeIs(anotherTheme)) {
                  Themed.clearCurrentTheme();
                } else {
                  Themed.currentTheme = anotherTheme;
                }
              },
              child: Text(
                Themed.ifCurrentThemeIs(anotherTheme)
                    ? 'Back to default theme ${ThemeApp.primary}'
                    : 'Apply another theme ${ThemeApp.primary}',
              ),
            )
          ],
        ),
      ),
    );
  }
}
