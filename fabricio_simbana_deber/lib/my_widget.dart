import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deber 1 Aplicaciones Móviles'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.search),
          iconSize: 64.0,
          onPressed: () {
            print('Fabricio Simbaña');
          },
        ),
      ),
    );
  }
}