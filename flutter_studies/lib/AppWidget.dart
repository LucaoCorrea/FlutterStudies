import 'package:flutter/material.dart';
import 'package:flutter_studies/HomePage.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: HomePage(),
    );
  }
}