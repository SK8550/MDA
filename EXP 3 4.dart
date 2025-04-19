import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea( // ✅ Keeps content away from notch/status bar
      child: Scaffold(
        appBar: AppBar(
          title: Text('Row & Column Example'), // ✅ AppBar
          backgroundColor: Colors.deepPurple,
        ),
        body: Column( // ✅ Column widget (vertical layout)
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30), // Adds space

            Text(
              'Below are some icons in a row:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            Row( // ✅ Row widget (horizontal layout)
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 40),
                    Text('Star'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 40),
                    Text('Like'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Icon(Icons.thumb_up, color: Colors.blue, size: 40),
                    Text('Thumbs Up'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
