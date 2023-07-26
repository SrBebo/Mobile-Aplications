import 'package:complex_layout_project/scroll_view_sample.dart';
import 'package:complex_layout_project/size_box_sample.dart';
import 'package:complex_layout_project/spacer_sample.dart';
import 'package:flutter/material.dart';
import 'package:complex_layout_project/complex_layout.dart';//importamos el archivo complex_layout.dart
import 'package:complex_layout_project/flexible_sample.dart'; //importamos el archivo flexible_sample.dart
import 'package:complex_layout_project/scroll_view_sample.dart'; //importamos el archivo scroll_view_sample.dart
import 'package:complex_layout_project/size_box_sample.dart'; //importamos el archivo size_box_sample.dart
import 'package:complex_layout_project/sized_box_empty.dart'; //importamos el archivo 'sized_box_empty.dart
import 'package:complex_layout_project/spacer_sample.dart'; //importamos el archivo 'spacer_sample.dart

void main() {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mi segunda aplicación",
        theme: ThemeData(primarySwatch: Colors.blue),
        //home: const ComplexLayout()
        //home: const FlexsibleSample()
        //home: const ScrollViewSample()
        //home: const SizeBoxSample()
        //home: const SizeBoxEmpty()
        home: const SpacerSample()
    );
  }
}
