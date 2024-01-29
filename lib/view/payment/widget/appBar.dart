import 'package:flutter/material.dart';

AppBar AppBarCustom(String title){
  return AppBar(

    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
        height: 0,
      ),


    )

  );

}