
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/reusable_component/product_card.dart';
import 'package:new_rothem/view/details_screen.dart';

class All_Product extends StatelessWidget {
  var cont= Get.put(Home_controllr());

  All_Product({super.key});
  @override
  Widget build(BuildContext context) {

    return GetBuilder<Home_controllr>(
        init: Home_controllr(),
        builder: (controller)
        {
          return  GridView.builder(


            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: (100/140),
            ),
            scrollDirection: Axis.vertical,
            itemCount: controller.productFire.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: (){
                    Get.to(Details_Screen(name: controller.productFire[index]['name'], price:100, img: controller.productFire[index]['imge']));
                  },
                  child: Column(
                    children: [
                      ProductCard(name: controller.productFire[index]['name'],img:controller.productFire[index]['imge'] ,price: 100),
                    ],
                  ));
            },

          );
        }
    );
    throw UnimplementedError();
  }


}
