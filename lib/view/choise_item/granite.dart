import 'package:flutter/material.dart';
import 'package:new_rothem/model/all_list.dart';
import 'package:new_rothem/reusable_component/product_card.dart';

class Granite extends StatelessWidget {
  const Granite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: (100/140),
      ),
      scrollDirection: Axis.vertical,
      //AllProduct.length
      itemCount:2 ,
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(name: AllProductt[index].name,img:AllProductt[index].image ,price: 100);
      },

    );
  }
}
