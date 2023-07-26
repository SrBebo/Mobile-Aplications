import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MyWidgetCol extends StatelessWidget {
  const MyWidgetCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera aplicación"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Mi primer Widget'),
          Text('Mi segundo Widget'),
          FlutterLogo(),
        ],
      ),
    );
  }
}





/*

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class MyWidgetRow extends StatelessWidget {
  const MyWidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(child: Text("Mi primer texto")),
            Expanded(child: Text("Mi segundo texto")),
            Expanded(child: FlutterLogo()),
          ],
        ),
      ),
    );
  }
}*/