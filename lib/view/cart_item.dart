import 'package:flutter/material.dart';
class Cart_Item extends StatelessWidget
{
  late  int counter=0;
  late String name ='';
  late int price =0;
  late String img ='';


  Cart_Item({super.key, required this.name, required this.price, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      margin: const EdgeInsets.only(left: 7,right: 7,top: 5),
      width: double.infinity,
      height:MediaQuery.of(context).size.height/6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ////////////////////////////// img of product
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
              ),
              color: Colors.deepOrange,
            ),
            margin: const EdgeInsets.all(5),

            width: 100,
            height: double.infinity,
          ),
          ////////////////////////////// name of product and price
          Column(
            children: [
              Text(name,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Text('\$''$price',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
            ],
          ),
          ////////////////////////////// mount of product
          Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ////////////////////////////// add_button

                Container(
                  alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      mini: true,
                      backgroundColor: Colors.deepOrange,
                      onPressed: (){},
                      child: const Icon(Icons.add,color: Colors.black,),
                    ),
                ),
                Text(counter.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                //////////////////////////////remove_button

                Container(
                    alignment: Alignment.center,

                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      mini: true,
                      backgroundColor: Colors.deepOrange,
                      onPressed: (){},

                      child: const Icon(Icons.remove,color: Colors.black,),
                    ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
    throw UnimplementedError();
  }

}