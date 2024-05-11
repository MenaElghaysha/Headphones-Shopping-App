import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget{
  List<String> courses =['Dart , Flutter , "Andriod ,"IOS'];
  String selectedCourse = 'Dart';

  var list= List<PopupMenuEntry<dynamic>>;


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Bar and drop down Button'),

        ),
      ),
    );
  }

}