import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routes_example/beans/widget_argument.dart';

class MyFirstWidget extends StatelessWidget {
  static const routeName = "/";
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first Widget"),
      ),
      body: Center(
        child: IconButton(
          icon: const FaIcon(FontAwesomeIcons.mugSaucer),
          onPressed: () => {
            Navigator.pushNamed(
              context,
              '/second',
              arguments: WidgetArgument(
                  'Este mensaje es dinamico', 'My segundo Widget'),
            ),
          },
        ),
      ),
    );
  }
}
