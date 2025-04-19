import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Demo'), backgroundColor: Colors.teal),
      body: Center(
        child: Container(
          height: 150,
          width: 200,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(color: Colors.orange, width: 2),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(4, 4))],
          ),
          transform: Matrix4.rotationZ(-0.05),
          child: Text('Hello Container!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
