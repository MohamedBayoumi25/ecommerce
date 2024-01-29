import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/view/cart_item.dart';


class Cart extends StatelessWidget
{
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
   return GetBuilder<Home_controllr>(
     init: Home_controllr(),
       builder: (controller){
     return Scaffold(
       backgroundColor: Colors.grey,
       appBar: AppBar(
         backgroundColor: Colors.deepOrange,
         title: const Text("My Cart"),
         centerTitle: true,
       ),
       body:ListView.builder(
           itemCount: controller.cart_product.length,
           itemBuilder: (BuildContext context,index){
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children:
                    [
                      SlidableAction(onPressed: (contaxt){
                         controller.RemoveItem(index);
                      },
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: "Delete",
                      )
                    ],

                  ),
                   child:Cart_Item(name: controller.cart_product[index].name, price: controller.cart_product[index].price, img: controller.cart_product[index].image),

               ),
             );
           }
       ) ,
     );

   });
    throw UnimplementedError();
  }

}