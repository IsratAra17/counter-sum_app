import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter_page extends StatefulWidget {
  const Counter_page({Key? key}) : super(key: key);

  @override
  State<Counter_page> createState() => _Counter_pageState();
}

class _Counter_pageState extends State<Counter_page> {
  int countNumber=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text(countNumber.toString(),style:TextStyle(fontSize: 40),),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            countNumber=countNumber+1;
          });
        },

      ),

    );
  }
}
