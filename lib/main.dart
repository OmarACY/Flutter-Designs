import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutterdesigns/pages/basic_page.dart';
import 'package:flutterdesigns/pages/buttons_page.dart';
import 'package:flutterdesigns/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

//    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
//      statusBarColor: Colors.transparent,
//    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'buttons',
      routes: {
        'basic' : (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}