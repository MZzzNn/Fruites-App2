import 'package:flutter/material.dart';
Widget leadingButton(BuildContext context,Color color){
  return Padding(
    padding: const EdgeInsets.only(left:13.0,top: 12),
    child: Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
      child:InkWell(
          onTap: (){Navigator.of(context).pop();},
          child: Icon(Icons.keyboard_arrow_left,color: color,size: 25,)),
    ),
  );
}