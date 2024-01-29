import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/model/product.dart';
import 'package:new_rothem/reusable_component/choise_type_of_marble.dart';
import 'package:new_rothem/reusable_component/slider.dart';
import 'package:awesome_dialog/awesome_dialog.dart';



class Details_Screen extends StatelessWidget
{
  var width=TextEditingController();
  var height=TextEditingController();

      late String name="سربجندا";
  late int price=100;
  late String img='image/image_product/سربجندا.jpg';

  Details_Screen({super.key, required this.name, required this.price, required this.img});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_controllr>(builder: (controller){
      return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text(name),
            centerTitle: true,
          ),
          body: Column(

            children: [
              ///////////////////////// img of product
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 300,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.1),
                      image:DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              /////////////////////////// description
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                    ),
                    color: Colors.grey.withOpacity(0.4)

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    // name of product and price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(name.toUpperCase(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                        Text('\$${'$price'.toUpperCase()}',style: const TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)

                      ],
                    ),
                    const SizedBox(height: 22,),
                   //////////////////////////// type of marble
                      const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text("النوع :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        const SizedBox(width: 5,),
                        GestureDetector(child: TypeOfProduct(name: "حوائط", num: 0, isselect: 0)),
                        GestureDetector(child:TypeOfProduct(name: "ارضيه", num: 1, isselect: 0)),
                        GestureDetector(child:TypeOfProduct(name: "درج", num: 2, isselect: 0)),
                      ],
                    ),
                      //////////////////////////// width of height
                      const SizedBox(height: 20,),

                     SliderWidget(controller.height, (p0) { controller.GetHeight(p0);}, "الطول"),
                      SliderWidget(controller.width, (p0) { controller.GetWidth(p0);}, "العرض")



                    ],),
                ),
              ),


            ],
          ),

          // contain of button
          bottomSheet: BottomAppBar(
            color: Colors.deepOrange,
            child: Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery.of(context).size.height/10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${'$price'.toUpperCase()}',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                  ElevatedButton.icon( onPressed: () async{
                    await controller.UserOrderAddCard(width: controller.width,height: controller.height,img: img,cost: 1000,id: 0,name_o: name,price: 100,quantity: 4);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'تم الاضافه بنجاح',
                        desc: 'تم المنتج الي سله المشتريات',
                        btnCancelOnPress: () {},
                    btnOkOnPress: () {
                      controller.AddItem(prod: Product(id: 0, name: name, category: "", image: img, description: "", price: price, quantity: 1));

                    },
                    )..show();
                  }, icon:const Icon(Icons.send), label: const Text("Add To Card"))

                ],
              ),
            ),
          )
      );
    }

    );
    throw UnimplementedError();
  }

}