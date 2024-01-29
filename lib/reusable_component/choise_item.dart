import 'package:flutter/material.dart';

class Item extends StatelessWidget
{
  late int isselect;
  late int num;
  late String name;
  Item({super.key, required this.name,required this.num,required this.isselect});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10,right: 10),
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color:isselect==num? Colors.deepOrange:Colors.red.shade200,
            borderRadius: BorderRadius.circular(8)
      ),
      child: Text(name
      ),
    );
    throw UnimplementedError();
  }

}