import 'package:flutter/material.dart';

Widget Button(BuildContext context,String title,Function function){
  return Material(
    borderRadius: BorderRadius.circular(15.0),
    color: Colors.red,
    child: MaterialButton(
      onPressed: function,
      height: 60,
      minWidth: MediaQuery.of(context).size.width -(130),
      child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),),
    ),
  );
}