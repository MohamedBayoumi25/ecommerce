import 'package:flutter/material.dart';



Widget PaymentDetailsItem({required bool isActive,required String img})
{

  return AnimatedContainer(
    duration: const Duration(microseconds: 700),

    width: 103,
    height: 62,

    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1.50, color: isActive? const Color(0xFF34A853):Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      shadows: [
        BoxShadow(
          color:  isActive? const Color(0xFF34A853):Colors.grey,
          blurRadius: 4,
          offset: const Offset(0, 0),
          spreadRadius: 0,
        )
      ],
    ),
    child: Center(child: Image(image: AssetImage(img),),),
  );
}