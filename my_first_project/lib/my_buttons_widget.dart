import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget{
  const MyButtonWidget({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 300,
      child: Column(
        children: <Widget>[
          Expanded(
            child: OutlinedButton(
            onPressed: ()=>{
              print("Elevated button")
            },
            child: const Text("Elevated Button"),
            ),
          ),
        ],
      ),
    );
  }
}