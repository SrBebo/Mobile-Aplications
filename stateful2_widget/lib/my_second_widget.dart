import 'package:flutter/material.dart';

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second widget'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('My second widget'),
              OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('back'),
              ),
          ],
        )
        //child: Text('My second widget'),
      ),
    );
  }
}