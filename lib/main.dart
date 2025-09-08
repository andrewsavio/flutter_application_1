import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
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
        body: Column(
          children: [
            Text("Hello!"),
            SizedBox(height: 20),
            Text("Welcome to the Quote App"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
