import 'package:flutter/material.dart';
import 'package:test_themed/second_page/second_page.dart';

import 'home_page/home_page.dart';

class Routes {
  static final routes = {
    '/': (BuildContext context) => const HomePage(),
    '/second_page': (BuildContext context) => const SecondPage(),
  };
}
