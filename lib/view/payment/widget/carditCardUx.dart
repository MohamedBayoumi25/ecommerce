import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get/get.dart';
import 'package:new_rothem/view/payment/view/thankYouPage.dart';
import 'package:new_rothem/view/payment/widget/buttoncustom.dart';



class  CarditCardWidget extends StatefulWidget
{
  const CarditCardWidget({super.key});

  @override
  State<CarditCardWidget> createState() => _CarditCardWidgetState();
}

class _CarditCardWidgetState extends State<CarditCardWidget> {
  GlobalKey <FormState>formKey=GlobalKey();

  late String cardNumber="", expiryDate="", cardHolderName="", cvvCode="";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            isHolderNameVisible: true,
            showBackView: false,

            onCreditCardWidgetChange: (i){}
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange:(value){
              cardNumber=value.cardNumber;
              expiryDate=value.expiryDate;
              cardHolderName=value.cardHolderName;
              cvvCode=value.cvvCode;
             setState(() {

             });


            },
            formKey: formKey),
        Button(title: "Pay", function: (){Get.to(const ThankYouPage());})
      ],
    );
    throw UnimplementedError();
  }
}