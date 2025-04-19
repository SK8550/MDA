import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea( // ✅ To avoid notches or status bar
      child: Scaffold(
        appBar: AppBar(
          title: Text('My AppBar'), // ✅ AppBar Widget
        ),
        body: Center(
          child: Text('Hello Flutter!'), // Simple Text
        ),
      ),
    );
  }
}
