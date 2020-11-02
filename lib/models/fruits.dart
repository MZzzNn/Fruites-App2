import 'package:flutter/material.dart';

class Fruits {
  final String title;
  final String id;
  final int price;
  final double sale;
  final String image;
  final Color color;
  final Color iconColor;
  const Fruits(
      {this.iconColor,@required this.title,@required this.id,@required this.sale,@required this.price,this.image,this.color});
}

List<Fruits> fruits_info = [
  Fruits(title: 'Apple', id: '1', sale: 0, 
      price: 3, image: 'images/apple.png',color: Color(0xffF4F8DD),iconColor: Color(0xffB4C273)),
  Fruits(title: 'Lychee', id: '2', sale: 0,
      price: 4, image: 'images/lychee.png',color: Color(0xffFEECEC),iconColor: Color(0xffBB4A4D)),
  Fruits(title: 'Coconut', id: '3', sale: 0,
      price: 3, image: 'images/coconut.png',color: Color(0xffE4D7DE),iconColor: Color(0xff977D88)),
  Fruits(title: 'Orange', id: '4', sale: 0,
      price: 2, image: 'images/orange.png',color: Color(0xffFFE7D3),iconColor: Color(0xffD69457)),
  Fruits(title: 'Mango', id: '4', sale: 0,
      price: 2, image: 'images/mango.png',color: Color(0xffFFE7D3),iconColor: Color(0xffD69457)),
  Fruits(title: 'Strawberry', id: '2', sale: 0,
      price: 4, image: 'images/straw.png',color: Color(0xffFEECEC),iconColor: Color(0xffBB4A4D)),
];
