import 'package:flutter/material.dart';

class MySecondWidget extends StatelessWidget {
  static const routeName = '/second';

  const MySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second widget"),
      ),
      body: const Center(
        child: Text("My Second widget"),
      ),
    );
  }
}
