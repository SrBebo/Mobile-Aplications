import 'package:flutter/material.dart';

class ComplexLayout extends StatelessWidget {
  const ComplexLayout({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 110,
        color: Color.red,
      ),
      Container(
        height: 100,
        color: Colors.blue[600],
        child: const Center(child: Text('Entry C')),
      ),
    ]);
  }
}