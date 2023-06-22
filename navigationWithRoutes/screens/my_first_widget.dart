import 'package:flutter/material.dart';
import 'package:routes_example/beans/widget_argument.dart';

class MyFirstWidget extends StatelessWidget {
  static const routeName = '/';

  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first widget"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Press ME!"),
          onPressed: () => {
            Navigator.pushNamed(
              context, 
              '/second', 
              arguments: WidgetArgument(
                'Mi segundo widget', 
                'Este mensaje es dinamico'
              )
            ),
          },
        ),
      ),
    );
  }
}
