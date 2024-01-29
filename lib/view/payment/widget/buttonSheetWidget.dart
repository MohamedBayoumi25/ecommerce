import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/view/payment/view/paymentDetails.dart';
import 'package:new_rothem/view/payment/widget/buttoncustom.dart';
import 'package:new_rothem/view/payment/widget/payment_Details_Item.dart';




class ButtonSheetWidget extends StatelessWidget
{
  const ButtonSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<Home_controllr>(
        init: Home_controllr(),
        builder:(controller){
      return  Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap:(){controller.move( 0);},child: PaymentDetailsItem(isActive: controller.movee==0,img: "image/card.png")),
                GestureDetector(onTap:(){controller.move( 1);},child:PaymentDetailsItem(isActive: controller.movee==1,img: "image/paypal.png")),
                GestureDetector(onTap:(){controller.move( 2);},child:PaymentDetailsItem(isActive: controller.movee==2,img: "image/pay.png")),
              ],
            ),
            const SizedBox(height: 50,),
            Button(title: "Countine", function: (){
              Get.to(const PaymentDetails());
            })

          ],
        ),
      );
    });
    throw UnimplementedError();
  }

}