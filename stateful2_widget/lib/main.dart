import 'package:flutter/material.dart';
import 'package:stateful2_widget/list_widget.dart';
import 'package:stateful2_widget/my_first_widget.dart';
import 'package:stateful2_widget/my_stateful_widget.dart';
import 'package:stateful2_widget/my_second_widget.dart';
import 'package:stateful2_widget/my_first_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){


    //para navegar entre widgets con rutas
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyFirstWidget(),
        '/second': (context) => const MySecondWidget(),
      },
    );

    /*
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyFirstWidget(),
    );*/
    
    
    /*return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: 
          MyListWidget(),
      )
    );*/
    //Forma 1
    /*return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: 
          //MyStatefulWidget(),
          MyListWidget(),
      )
    );*/
    //Forma 1
  }

}