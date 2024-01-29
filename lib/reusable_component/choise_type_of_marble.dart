import 'package:flutter/material.dart';

class TypeOfProduct extends StatelessWidget
{
  late int isselect;
  late int num;
  late String name;
  TypeOfProduct({super.key, required this.name,required this.num,required this.isselect});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10,right: 10),
      height: 40,
      width: 80,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: isselect==num? Colors.deepOrange:Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color:  isselect==num? Colors.deepOrange:Colors.grey,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),

      child: Text(name
      ),
    );
    throw UnimplementedError();
  }

}