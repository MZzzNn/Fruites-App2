import 'package:flutter/material.dart';
bool fillColor =false;
 const KTextFieldDecoration = InputDecoration(
  filled: true,
  hintText: 'Search',
  hintStyle: TextStyle(color: Colors.grey),
  fillColor:Colors.grey,
  suffixIcon: Icon(Icons.search,color: Colors.black54,),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(style:BorderStyle.none),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey,style: BorderStyle.none),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);

