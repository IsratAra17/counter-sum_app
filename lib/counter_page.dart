import 'package:counter_app/style.dart';
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
      body:Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Sum is:",style: AppTextStyle(),),
            SizedBox(height: 22,width: double.infinity,),
            TextField(decoration: AppInputStyle("First Number"),),
            SizedBox(height: 22,width: double.infinity,),
            TextField(decoration: AppInputStyle("Second Number"),),
            SizedBox(height: 22,width: double.infinity,),
            Container(width:double.infinity,child: ElevatedButton(onPressed: (){},style: AppBtnStyle(), child: Text("ADD",style: TextStyle(color:Colors.black),))),


            SizedBox(height: 40,width: double.infinity,),
            Text(countNumber.toString(),style:AppTextStyle()),

          ],
        ),

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
