import 'package:flutter/material.dart';
import 'package:stateful2_widget/my_second_widget.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main widget'),  
      ),
      body: Center(
        child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const MySecondWidget(),
          ),
        ),
        child: const Text('Press me'),
        )
      ), 
      
    );
  }
}