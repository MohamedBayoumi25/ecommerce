import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget
{
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top:30,left: 20,right: 20,bottom: 20),
        child: SafeArea(
          child: Container(
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ///////////////////////// check icon
                const Positioned(
                  left: 0,
                    right: 0,
                    top: -40,
                    child:CircleAvatar(
          
                  radius: 50,
                  backgroundColor: Color(0xFFD9D9D9),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF34A853),
                        radius: 40,
                            child: Icon(Icons.check,color: Colors.white,size: 70,),
                      ),
          
                )),
                ///////////////////////// Left circle
                Positioned(
                  left: -20,
                  bottom: MediaQuery.sizeOf(context).height*.2,
                    child: const CircleAvatar(
          
                      backgroundColor: Colors.white,
                 radius: 20,
              )),
                ///////////////////////// Right circle
                Positioned(
                    right: -20,
                    bottom: MediaQuery.sizeOf(context).height*.2,
                    child: const CircleAvatar(
          
                      backgroundColor: Colors.white,
                      radius: 20,
                    )),
                ///////////////////////// dashed line
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.sizeOf(context).height*.22,
                    child: Row(
                      children: List.generate(33, (index) =>Container(width:10 ,height: 3,color: const Color(0xFFB7B7B7),) ),
                    )
                ),
                ///////////////////////// Thank You Text
                Positioned(
                  left: 0,
                  right: 0,
                  top: MediaQuery.sizeOf(context).height*.1,
                    child: Column(
                  children: [
                    const Text(
                      'Thank you!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Text(
                      'Your transaction was successful',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.800000011920929),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )
                  ],
                )),
                ///////////////////////// Data,time,to  Text
                Positioned(
                    left: 20,
                    right: 20,
                    top: MediaQuery.sizeOf(context).height*.24,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              '01/24/2023',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                           SizedBox(height: 22,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Time',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              '10:15 AM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 22,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'To',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Sam Louis',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                ///////////////////////// dashed line
                Positioned(
                    left: 20,
                    right: 20,
                    top: MediaQuery.sizeOf(context).height*.43,
                    child: Row(
                      children: List.generate(33, (index) =>Container(width:10 ,height: 3,color: const Color(0xFFB7B7B7),) ),
                    )
                ),
                ///////////////////////total text
                Positioned(
                  left: 20,
                  right: 20,
                  top:MediaQuery.sizeOf(context).height*.46,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                      children: [
                    Text(
                      'Total',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      '\$50.97',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                )),
          
                Positioned(
                    top:MediaQuery.sizeOf(context).height*.53,
                    left: 20,
                    right: 20,
          
                    child: Container(
                  width: 305,
                  height: 73,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
          
                        const Image(image: AssetImage("image/logo.png")),
                        const SizedBox(width: 20,),
          
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Credit Card ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Mastercard **78 ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.699999988079071),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          )
          
                          ],
                        )
          
                      ,),
                ),
          
                Positioned(
                    bottom: MediaQuery.sizeOf(context).height*.06,
                    left: 20,
                    right: 20,
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: AssetImage("image/iconCarrier.png")),
                    Container(
                      alignment: Alignment.center,
                      width: 113,
                      height: 58,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'PAID',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF34A853),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    )
          
                  ],
                ))
          
          
              ],
            ),
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }

}
