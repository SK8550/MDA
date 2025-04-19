import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RichText Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RichText Example"),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Hello ', // Normal text
              style: TextStyle(fontSize: 24, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'Flutter ',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                TextSpan(
                  text: 'Developer!',
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
