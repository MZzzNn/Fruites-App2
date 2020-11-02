import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../home_screen/rounded_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget FruitCart(
    {BuildContext context,
    String image,
    Color color,
    String title,
    int price,
    int count}){
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 20),
          height: 105,
          width: 88,
          child: RoundedContainer(context, color, image)
      ),
      SizedBox(width: 20,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          SizedBox(height: 3,),
          Row(
            children: [
              Text('\$${price}.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              Text('01kg',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
            ],
          ),
        ],
      ),
      Expanded(child: SizedBox()),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 25,
            height: 25,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
              elevation: 6,
              child:Icon(Icons.remove,size: 15,color: Colors.black54,),
            ),
          ),
          Text(' ${count} ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
          Container(
            width: 25,
            height: 25,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
              elevation: 6,
              child:Icon(Icons.add,size: 15,color: Colors.black54,),
            ),
          ),
          SizedBox(width: 8,),
          Icon(FontAwesomeIcons.trashAlt,size: 15,color: Colors.black54,),
        ],
      ),
    ],
  );
}