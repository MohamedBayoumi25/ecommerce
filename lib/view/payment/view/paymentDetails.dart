import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/view/payment/widget/appBar.dart';
import 'package:new_rothem/view/payment/widget/carditCardUx.dart';
import 'package:new_rothem/view/payment/widget/payment_Details_Item.dart';

class PaymentDetails extends StatefulWidget
{
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  int index=0;

  @override
  Widget build(BuildContext context) {
   return GetBuilder<Home_controllr>(builder:(controller){
     return Scaffold(
       appBar: AppBarCustom("Payment Details"),
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           padding: const EdgeInsets.only(top: 20),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   GestureDetector(onTap:(){controller.move( 0);},child: PaymentDetailsItem(isActive: controller.movee==0,img: "image/card.png")),
                   GestureDetector(onTap:(){controller.move( 1);},child:PaymentDetailsItem(isActive: controller.movee==1,img: "image/paypal.png")),
                   GestureDetector(onTap:(){controller.move( 2);},child:PaymentDetailsItem(isActive: controller.movee==2,img: "image/pay.png")),
                 ],
               ),
               const Column(children: [
                 CarditCardWidget()
               ],),

             ],
           ),
         ),
       ),

     );
   } );
    throw UnimplementedError();
  }
}