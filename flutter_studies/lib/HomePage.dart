import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: GestureDetector(
              child: Text(
                'Contador: $count',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                setState(() {
                  count++;
                });
              })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        splashColor: Colors.red,
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
