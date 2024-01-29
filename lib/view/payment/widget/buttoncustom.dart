import'package:flutter/material.dart';


Widget Button ({required String title,required VoidCallback function})
{

  return Container(
    width: 350,
    height: 60,
    decoration:     BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff34a853)
    ),
    child: MaterialButton(onPressed:function,child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        )
    ),),
  );
}
