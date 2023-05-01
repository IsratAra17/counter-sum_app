import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter_page extends StatefulWidget {
  const Counter_page({Key? key}) : super(key: key);

  @override
  State<Counter_page> createState() => _Counter_pageState();
}

class _Counter_pageState extends State<Counter_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text("Counting Number"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
