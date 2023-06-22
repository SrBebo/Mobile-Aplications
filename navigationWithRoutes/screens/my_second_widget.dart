import 'package:flutter/material.dart';
import 'package:routes_example/beans/widget_argument.dart';

class MySecondWidget extends StatelessWidget {
  static const routeName = '/second';

  const MySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as WidgetArgument;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
