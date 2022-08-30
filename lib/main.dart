import 'package:flutter/material.dart';
import 'package:flutter_navegacoes/navigation/home_page.dart' as navigation;
import 'package:flutter_navegacoes/navigation/page2.dart';
import 'package:flutter_navegacoes/navigation/page3.dart';
import 'package:flutter_navegacoes/navigation_params/details.dart';
import 'package:flutter_navegacoes/navigation_params/list.dart';

import 'navigation/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: navigation.HomePage(),
      initialRoute: "/navigation_params",
      routes: {
        '/': (route) => navigation.HomePage(),
        '/page1': (route) => Page1(),
        Page2.routeName: (route) => Page2(),
        '/page3': (route) => Page3(),
        '/navigation_params': (route) => Lista(),
        '/details': (route) => Details(),
      },
    );
  }
}
