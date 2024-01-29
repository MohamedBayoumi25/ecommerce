import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  late String img;
  late String name;
  late double price;
  ProductCard({super.key, required this.name,required this.img,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),

      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            child: Image(image: AssetImage(img)),
          ),
          Container(
            child:Text(name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
          Container(
            child:Text(price.toString()),
          )
        ],
      ),

    );
  }
}
