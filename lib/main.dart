import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import 'screens/fruit_screen.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeScreen() ,
      )
  );
}
