import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: WidgetDemo()));

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Widgets Example"),
          bottom: TabBar(tabs: [
            Tab(text: "Grid"),
            Tab(text: "List"),
            Tab(text: "Stack"),
            Tab(text: "Card"),
          ]),
        ),
        body: TabBarView(children: [
          // GridView
          GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (i) {
              return Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal[100 * (i + 1)],
                child: Center(child: Text("Item $i")),
              );
            }),
          ),

          // ListView
          ListView.builder(
            itemCount: 4,
            itemBuilder: (context, i) => ListTile(
              leading: Icon(Icons.label),
              title: Text("List $i"),
            ),
          ),

          // Stack
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 200, height: 200, color: Colors.blue),
                Container(width: 150, height: 150, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.red),
              ],
            ),
          ),

          // Card
          ListView(
            children: List.generate(2, (i) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Card $i"),
                  subtitle: Text("Details $i"),
                ),
              );
            }),
          ),
        ]),
      ),
    );
  }
}
