import 'package:flutter/material.dart';

import 'package:flutterdesigns/pages/basic_page.dart';
import 'package:flutterdesigns/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes: {
        'basic' : (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
      },
    );
  }
}