import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:badges/badges.dart' as badges ;
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/model/all_list.dart';
import 'package:new_rothem/view/botton_nev_bar_screen/cart_page.dart';

class Main_screen extends StatelessWidget
{
  const Main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_controllr>(
      init: Home_controllr(),
      builder:(controller)=>Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('الوطنيه للرخام والجرانيت'),
          centerTitle:true,
          actions: [badges.Badge(
            position: badges.BadgePosition.topEnd(top: 10, end: 10),

            child: IconButton(
              icon: const Icon(Icons.add_shopping_cart,color: Colors.black,),
              onPressed: () {
                Get.to(const Cart());
              },
            ),
          ),]

        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            controller.get(index);
          },
          currentIndex: controller.index,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favroite"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //controller.GetDataFromFirebase();

          },
          backgroundColor: Colors.deepOrange,
          child: const Icon(Icons.add),
        ),

        body: Nav_bar[controller.index],
      ),

    );


    throw UnimplementedError();
  }

}