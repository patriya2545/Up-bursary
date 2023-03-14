import 'package:flutter/material.dart';

class MyStyle {


  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 191, 52, 215),
          ),
        );

  Widget titleH2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 15, 14, 15),
          ),
        );

  Widget titleH3(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 15, 14, 15),
          ),
          textAlign: TextAlign.right,
        );


  MyStyle();
}