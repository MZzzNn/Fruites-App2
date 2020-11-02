import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Hi, Jinea!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 22
            ),
          ),
          Icon(Icons.dehaze,color: Colors.black,),
        ],
      ),
    ),
    leading: Padding(
      padding: const EdgeInsets.only(left:10.0,top: 10.0),
      child: CircleAvatar(
        backgroundImage:AssetImage('images/photo.jpg',),
        radius: 20,
      ),
    ),
    elevation: 0.0,
    backgroundColor: Colors.white,
  );
}

