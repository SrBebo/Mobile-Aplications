import 'package:flutter/material.dart';
import 'package:routes_example/screens/my_first_widget.dart';
import 'package:routes_example/screens/my_second_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Routes Application",
        //home: MyFirstWidget(),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyFirstWidget(),
          '/second': (context) => const MySecondWidget(),
        }
    );
  }
}
