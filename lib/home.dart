import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("biodata saya"),
        backgroundColor: Colors.amber,
        leading: Icon(Icons.people),
      ),
    body: Container(
      child: Text("saya belajar flutter"),
      color: Colors.red,
    ),
    );
  }
}