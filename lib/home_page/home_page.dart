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
        actions: [
          changeTheme(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'estimateBrightnessForColor: ${ThemeData.estimateBrightnessForColor(ThemeApp.primary)}'),
            Text('Theme.of.brightness: ${Theme.of(context).brightness}'),
            Container(
              height: 30,
              color: ThemeApp.backgroundTitle,
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Minhas frases em classificação ',
                    // style: AppTextStyles.trailingBold,
                  ),
                ],
              ),
            ),
            goSecondPage(context),
            Card(
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const ListTile(
                    tileColor: ThemeApp.backgroundPhrase,
                    title: Text(
                      'Jesus é bom.',
                    ),
                    trailing: Icon(Icons.ac_unit),
                  ),
                  Wrap(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.ac_unit),
                        label: const Text('ElevatedButton.icon'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('ElevatedButton'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.ac_unit),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('TextButton'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'TextButton forced color',
                          style: TextStyle(color: ThemeApp.primary),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Tooltip(
              message: 'mensagem do tooltip',
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                label: const Text('ElevatedButton.icon'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'TextButton forced color',
                style: TextStyle(color: ThemeApp.primary),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Salvar estes campos em núvem',
        child: const Icon(Icons.ac_unit),
        onPressed: () {},
      ),
    );
  }

  IconButton changeTheme() {
    return IconButton(
      onPressed: () {
        if (Themed.ifCurrentThemeIs(darkTheme)) {
          Themed.clearCurrentTheme();
        } else {
          Themed.currentTheme = darkTheme;
        }
      },
      icon: const Icon(Icons.ac_unit),
    );
  }

  ElevatedButton goSecondPage(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/second_page',
        );
      },
      icon: const Icon(Icons.looks_two_outlined),
      label: const Text('Go second page.'),
    );
  }
}
