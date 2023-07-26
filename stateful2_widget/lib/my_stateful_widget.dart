import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyStatefulWidget> {
  var label = 'Press me';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          label = "Pressed";
                        })
                  },
                  child: Text(label)
              )
          );
  }
}
