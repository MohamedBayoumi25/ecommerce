import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/view/payment/widget/appBar.dart';
import 'package:new_rothem/view/payment/widget/buttonSheetWidget.dart';
import 'package:new_rothem/view/payment/widget/buttoncustom.dart';


class MyCard extends StatelessWidget
{
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_controllr>

      (
      init: Home_controllr(),
        builder: (Controller)
            {
              return Scaffold(
                appBar: AppBarCustom("MyCard"),
                body: Padding(
                  padding: const EdgeInsets.only(left:20,right: 20,bottom: 20 ),
                  child: Column(
                    children: [
                      // image of baskat
                      Expanded(
                        child: Container(
                            width: 350,
                            height: 380,
                            decoration: const BoxDecoration
                              (
                                color: Colors.white
                            ),
                          child:const Image(image: AssetImage("image/baskat.png"),)
                        ),
                      ),
                      // details of order
                    const SizedBox(height: 15,),
                      Column(
                        children: [
                          OrderInfItem("تريستا",100),
                          OrderInfItem("Discount",0),
                          OrderInfItem("Shopping",8),
                          const SizedBox(height: 5,),
                          Container(
                            color: Colors.black,
                            width: double.infinity ,
                            height: 1,
                          ),
                          OrderTotalPrice(),
                  
                        ],
                      ),
                      Button(title: "Complete Payment",function: (){
                        showModalBottomSheet(context: context, builder:(context){
                             return const ButtonSheetWidget();
                        });
                      })
                      //Get.to(PaymentDetails());
                  
                    ],
                  ),
                )
              );
            }
       );
    throw UnimplementedError();
  }

}

Widget OrderInfItem(String name,int  price)
{

  return Row(
    children: [
      Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )
      ),
      const Spacer(),
      Text(
          "\$""$price",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )
      )
    ],
  );
}

Widget OrderTotalPrice()
{
  return const Row(
    children: [
      Text(
          "Total",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
      ),
      Spacer(),
      Text(
          "\$""42.97",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )
      )
    ],
  );
}


