


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_rothem/model/all_list.dart';
import 'package:new_rothem/model/product.dart';

class Home_controllr extends GetxController
{
  bool isLoading=true;
  late DocumentReference doc;
  final _dp=FirebaseFirestore.instance;
  List productFire=[];
  List UserFire=[];
  List cart_product=[];
  late Product prod;
  int index=0;
   int movee=0;
   double width=0;
  double height=0;


  final CollectionReference note= FirebaseFirestore.instance.collection("product");
  final CollectionReference data= FirebaseFirestore.instance.collection("user");

  move(int value)
  {
   movee=value;
    update();
  }
  void get(int ind)
  {
    index=ind;
    update();
  }
  void AddItem({prod})
  {
    cart_product.add(prod);
    update();
  }

  // get width
  void GetWidth(double value)
  {
    width=value;
    update();
  }
  // get height
  void GetHeight(double value)
  {
    height=value;
    update();
    print(height);
  }

  void RemoveItem(int ind)
  {
    cart_product.removeAt(index);
    update();
  }
  // set  data of firebase

  Future<void> SetDataFromFirebase() async
  {
    try {
      AllProductt.forEach((i) async{
        await note.add({
          "name":i.name,
          "imge":i.image,
          "price":"${i.price}",
          "id":"${i.id}",
          "descr":i.description,


        });
      });
      update();

    }  on Exception catch (e) {
      // Anything else that is an exception
      print('Unknown exception: $e');
    } catch (e) {
      // No specified type, handles all
      print('Something really unknown: $e');
    }

  }

// get  data of firebase
  Future<void> GetDataFromFirebase() async
  {

    try {
      var a= await note.get();
      for (var element in a.docs) {
        productFire.add(element.data());
      }
      print(productFire);
      update();

    }  on Exception catch (e) {
      // Anything else that is an exception
      print('Unknown exception: $e');
    } catch (e) {
      // No specified type, handles all
      print('Something really unknown: $e');
    }

  }

  // get  dataUser of firebase
  Future<void> GetDataUserFromFirebase() async
  {

    try {
      var a= await data.get();
      for (var element in a.docs) {
        productFire.add(element.data());
      }
      print(UserFire);
      update();

    }  on Exception catch (e) {
      // Anything else that is an exception
      print('Unknown exception: $e');
    } catch (e) {
      // No specified type, handles all
      print('Something really unknown: $e');
    }

  }


  Future<void> LoginVerfiy(String email,String pass,BuildContext context) async
   {
     
     await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);
     update();
   }


   ////////////////////////////// User Register
   Future RegisterUser({required String f_name,required String l_name,required String email,required String password,required BuildContext context })
  async {

     await FirebaseAuth.instance
         .createUserWithEmailAndPassword(
         email: email,
         password: password);
     await FirebaseFirestore.instance
         .collection("user")
         .add({
       "userid":FirebaseAuth.instance.currentUser!.uid,
       "f_name": f_name,
       "l_name": l_name,
       "email": email,
       "password": password,
     });
     isLoading=false;
     update();
   }


  ////////////////////////////// order that after payment
  Future OrrderRegister({
     required int id,
     required String name_o,
     required String name_u,
     required String img,
     required String number_u,
     required double  price,
    required int quantity,
     required double cost,
     required double height,
     required double width
  })
  async {


    await FirebaseFirestore.instance
        .collection("order")
        .add({
      "userid":FirebaseAuth.instance.currentUser!.uid,
      "name_o": name_o,
      "name_u": name_u,
      "img": img,
      "number_u": number_u,
      "price": price,
      "quantity": quantity,
      "cost":cost,
      "height": height,
      "width": width,


    });
    isLoading=false;
    update();
  }



  ////////////////////////////// order that after payment
  Future UserOrderAddCard({
    required int id,
    required String name_o,
    required String img,
    required double  price,
    required int quantity,
    required double cost,
    required double height,
    required double width
  })
  async {


    await data.doc("0e5xpxVsiJ2o5saAdsEo").update({
      "orders": {
        "or": name_o,
        "img": img,
        "price": price,
        "quantity": quantity,
        "cost": cost,
        "height": height,
        "width": width,
      }

    });
    isLoading=false;
    update();
  }










  @override
  // TODO: implement initialized
void onInit() {
    // TODO: implement onInit
  GetDataFromFirebase();
    super.onInit();

  }
}