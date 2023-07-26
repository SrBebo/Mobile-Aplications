import 'package:flutter/material.dart';
import 'package:my_new_homework/header_card.dart';
import 'package:my_new_homework/body_card.dart';

void main() {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My_new_homework",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Presentation Target'),
        ),
        body: const Column(
          children: [
            HeaderCard(),
            //SizedBox(height: 0),//espacio entre filas
            BodyCard(),
          ],
        ),
      ),
    );
  }
}
