import 'package:counter_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter_page extends StatefulWidget {
  const Counter_page({Key? key}) : super(key: key);

  @override
  State<Counter_page> createState() => _Counter_pageState();
}

class _Counter_pageState extends State<Counter_page> {
  int countNumber = 0;

  Map<String,double> formValue = {"Num1": 0, "Num2": 0, "Num3": 0};
  double sum=0;
  @override
  Widget build(BuildContext context) {

    MyInputChange(Inputkey, InputValue) {
      setState(() {
        formValue.update((Inputkey), (value) => double.parse(InputValue));
        print(formValue);
      });
    }
AddAllNum(){
      setState(() {
        sum=formValue['Num1']!+formValue['Num2']!+formValue['Num3']!;
        print(sum);
      });
}
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              sum.toString(),
              style: AppTextStyle(),
            ),
            SizedBox(
              height: 22,
              width: double.infinity,
            ),
            TextField(
              onChanged: (value) {
                MyInputChange("Num1", value);
              },
              decoration: AppInputStyle("First Number"),
            ),
            SizedBox(
              height: 22,
              width: double.infinity,
            ),
            TextField(
              onChanged: ((value) {
                MyInputChange("Num2", value);
              }),
              decoration: AppInputStyle("Second Number"),
            ),
            SizedBox(
              height: 22,
              width: double.infinity,
            ),
            TextField(
              onChanged: ((value) {
                MyInputChange("Num3", value);
              }),
              decoration: AppInputStyle("Third Number"),
            ),
            SizedBox(
              height: 22,
              width: double.infinity,
            ),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      AddAllNum();
                    },
                    style: AppBtnStyle(),
                    child: Text(
                      "ADD",
                      style: TextStyle(color: Colors.black),
                    ))),
            // SizedBox(
            //   height: 40,
            //   width: double.infinity,
            // ),
            // Text(countNumber.toString(), style: AppTextStyle()),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     setState(() {
      //       countNumber = countNumber + 1;
      //     });
      //   },
      // ),
    );
  }
}
