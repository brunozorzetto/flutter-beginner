import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'template.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  Widget build (BuildContext contex) {
    return new MaterialApp(
      title: 'Bruno Informática',
      home: new Template()
    );
  }
}