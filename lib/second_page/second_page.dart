import 'package:flutter/material.dart';
import 'package:test_themed/theme/theme_app.dart';
import 'package:themed/themed.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Themed - Second Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.looks_one_outlined),
              label: const Text('back to home.'),
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
