import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  get tileColor => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Quote App"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          leading: Icon(Icons.menu),
        ),
        drawer: Drawer(child: Center(child: Text("Drawer"))),
        body: ListView(
          children: [
            ...List.generate(
              50,
              (int index) => Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  title: Text("Hello $index"),
                  subtitle: Text("Subtitle $index"),
                  tileColor: Colors.grey[200],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
