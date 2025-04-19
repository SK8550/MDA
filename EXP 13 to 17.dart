import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ButtonDemo()));

class ButtonDemo extends StatefulWidget {
  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  String selected = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons Demo")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextButton(
              onPressed: () => print("TextButton"),
              child: Text("TextButton"),
              style: TextButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
            ),
            ElevatedButton(
              onPressed: () => print("ElevatedButton"),
              child: Text("ElevatedButton"),
            ),
            DropdownButton(
              value: selected,
              items: ['Option 1', 'Option 2', 'Option 3']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (val) => setState(() => selected = val!),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up, color: Colors.green),
              onPressed: () => print("IconButton"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("FAB"),
        child: Icon(Icons.add),
      ),
    );
  }
}
