import 'package:flutter/material.dart';



class SliderWidget extends StatelessWidget{
  late double value;
  void Function(double)? function;
  late String type;

  SliderWidget(this.value, this.function, this.type, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text("$type :",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),

        SizedBox(
          width: MediaQuery.of(context).size.width/2,
          child: Slider(
            min: 0,
            max: 10,
            activeColor: Colors.deepOrange,
            value:value,
            onChanged: function,
            label: "الطول",
          ),
        ),
        Text(value.toStringAsFixed(2).toString(),style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
      ],
    );
    throw UnimplementedError();
  }


}