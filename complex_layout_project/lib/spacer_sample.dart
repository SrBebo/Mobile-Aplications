import 'package:flutter/material.dart';

class SpacerSample extends StatelessWidget {
  const SpacerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
      const Spacer(
        flex: 2,
      ),
      Expanded(
        child: Container(
          color: Colors.red,
          height: 100,
        ),
      ),
      const Spacer(),//sino pongo ningun valor de flex por defecto es 1
      Expanded(
        child: Container(
          color: Colors.black,
          height: 100,
        ),
      ),
      ],
    );
  }
}