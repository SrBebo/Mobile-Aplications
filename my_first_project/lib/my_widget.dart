import 'package:flutter/material.dart';
import 'package:my_first_project/my_icon_example.dart';
import 'package:my_first_project/my_card.dart';

import 'package:my_first_project/my_buttons_widget.dart';
import 'package:my_first_project/my_text.dart';

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello App bar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){
              print('favorite pressed');
            },
          )
        ],
      ),
      body: TextExample(),
            
    );
  }
}