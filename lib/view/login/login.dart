import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/view/login/register.dart';
import 'package:new_rothem/view/main_screen.dart';

class Login extends StatelessWidget {
  var form_key=GlobalKey<FormState>();
  var email=TextEditingController();
  var pass=TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_controllr>(
        init: Home_controllr(),
        builder: (controller)
    {
      return  Scaffold(
        body: Container(
          height: double.infinity,

          decoration: const BoxDecoration(
              image:DecorationImage(
                  image: AssetImage('image/background.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Expanded(
              child: Form(
                  key: form_key,
                  child: Column(
                    children: [
                      ///////////////////////////////////////////////slogen
                      const Padding(
                        padding: EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('image/slogen1.png'),height: 120,width: 120,),
                            Spacer(),
                            Image(image: AssetImage('image/slogen2.png'),height: 120,width: 120),
                          ],
                        ),
                      ),
/////////////////////////////////////////////////////////////////////////////// login page_text

                      Container(
                        padding: const EdgeInsets.only(top: 50,left: 20),
                        child: const Text(
                          "LOGIN PAGE",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // ////////////////////////////////////////////////////email
                      Container(
                          padding: const EdgeInsets.all(20),
                          child:
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty)
                              {
                                return "please enter email";
                              }
                              return null;

                            },
                            controller: email,
                            decoration: InputDecoration(
                                labelStyle: const TextStyle(color: Colors.black),
                                suffix: const Icon(Icons.email),
                                hintText: "enter your email",
                                label: const Text("email"),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown,width:2.5),

                                )
                            ),
                          )
                      ),

                      /////////////////////////////////////////////////// password
                      Container(
                          padding: const EdgeInsets.all(20),
                          child:
                          TextFormField(
                            controller: pass,
                            validator: (value){
                              if(value!.isEmpty)
                              {
                                return "please enter password";
                              }
                              return null;

                            },
                            obscureText: true,


                            decoration: InputDecoration(
                                labelStyle: const TextStyle(color: Colors.black),

                                suffix: const Icon(Icons.remove_red_eye_outlined),
                                hintText: "enter your password",
                                label: const Text("password"),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown,width:2.5),

                                )
                            ),
                          )
                      ),
                      //////////////////////////////////////////////login button
                      Container(
                          height: 50,
                          width: 350,

                          decoration: BoxDecoration(
                              image:const DecorationImage(
                                  image: AssetImage('image/background3.png'),
                                  fit: BoxFit.cover

                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),


                          child:MaterialButton(onPressed: () async{
                            if(form_key.currentState!.validate())
                            {
                              try  {
                                await  controller.LoginVerfiy(email.text, pass.text, context);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                    content: Text(
                                        "successfully registered")));
                                Get.to(const Main_screen());
                              }
                              on FirebaseAuthException {

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                      content:
                                      Text('invaild login ')));

                              }
                              //await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password:pass.text);


                             // controller.LoginVerfiy(email.text, pass.text);



                            }
                          },child: const Text("login",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),)),

                      Container(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: TextButton(
                          onPressed:(){
                            Get.to(Register());
                          } ,
                          child: const Text(
                          "Create A New Account ?",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      );
    }
    );
    throw UnimplementedError();
  }
}
