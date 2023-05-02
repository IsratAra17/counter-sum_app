import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

InputDecoration AppInputStyle(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      filled: true,
      fillColor: Colors.orange,
      border: OutlineInputBorder(),
      labelText: label

  );
}
  TextStyle AppTextStyle(){
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );


}
ButtonStyle AppBtnStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.limeAccent,
        padding: EdgeInsets.all(10),
        elevation: 10,

        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(4))),




  );
}