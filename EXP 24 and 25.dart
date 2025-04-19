import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListTile & Icons")),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text("Home"),
              subtitle: Text("Go to Home Page"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.green),
              title: Text("Call"),
              subtitle: Text("Call someone"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.red),
              title: Text("Email"),
              subtitle: Text("Send an email"),
              trailing: Icon(Icons.mail_outline),
            ),
          ],
        ),
      ),
    );
  }
}
