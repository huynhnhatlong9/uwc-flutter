import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/home.dart';
import 'package:myapp/src/modules/home/page/HomePage.dart';
import 'package:myapp/src/modules/login/page/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.amber, primaryColor: Colors.amber),
      routes: {
        '/': (context)=>HomePage(),
        '/login': (context)=>LoginScreen()
      },
      initialRoute: '/login',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    int onPressed() {
      debugPrint("Long ne");
      return 1;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: MyHomeTile());
  }
}

class MyHomeTile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeTitleState();
  }
}

class MyHomeTitleState extends State<MyHomeTile> {
  String _string = "Long ne";

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          setState(() {
            _string = "Long 2";
          });
        },
        child: Text(_string));
  }
}
