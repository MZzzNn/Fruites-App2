import 'package:flutter/material.dart';

Widget RoundedContainer(BuildContext context ,Color color,String image){
  return  Container(
    height: (MediaQuery.of(context).size.width *0.333)+30,
    width: MediaQuery.of(context).size.width *0.333,
    decoration: BoxDecoration(
      color:color,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(280),
        topLeft: Radius.circular(390),
        bottomRight: Radius.circular(500),
        bottomLeft: Radius.circular(200),
      ),
    ),
    child:Padding(
      padding:  EdgeInsets.all(12),
      child: Center(
        child: Image.asset(image),
      ),
    ),
  );
}