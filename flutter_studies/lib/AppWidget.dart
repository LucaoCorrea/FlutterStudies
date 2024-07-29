import 'package:flutter/material.dart';
import 'package:flutter_studies/AppController.dart';
import 'package:flutter_studies/HomePage.dart';
import 'package:flutter_studies/LoginPage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light
                  ),
                  initialRoute: '/',
                  routes: {
                    '/': (context) => LoginPage(),
                    '/home': (context) => HomePage(),
                  },
      
        );
      },
    );
  }
}
