import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 10.0,
      child: SizedBox(
        height: 100,
        child: Row(children: <Widget>[
          Expanded(
            child: Text("Esta es la tarjeta"),
          ),
          Expanded(child: Text("Esta es la tarjeta 2"))
        ]),
      ),
    );
  }
}