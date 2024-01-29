import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';
import 'package:new_rothem/view/login/login.dart';

class Register extends StatelessWidget {
  var form_key = GlobalKey<FormState>();
  var email = TextEditingController();
  var f_name = TextEditingController();
  var l_name = TextEditingController();
  var pass = TextEditingController();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_controllr>(
        init: Home_controllr(),
        builder: (controller) {
          return Scaffold(
            body: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/background.jpg'),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Expanded(
                  child: Form(
                      key: form_key,
                      child: Column(
                        children: [
/////////////////////////////////////////////////////////////////////////////// login page_text

                          Container(
                            padding: const EdgeInsets.only(top: 100, left: 20),
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          // ////////////////////////////////////////////////////email
                          Container(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.brown, width: 2.5),
                                    )),
                              )),
                          ///////////////////////////////////////// first name
                          Container(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter first name";
                                  }
                                  return null;
                                },
                                controller: f_name,
                                decoration: InputDecoration(
                                    labelStyle: const TextStyle(color: Colors.black),
                                    suffix: const Icon(Icons.email),
                                    hintText: "enter your first name",
                                    label: const Text("First Name"),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.brown, width: 2.5),
                                    )),
                              )),
                          ///////////////////////////////////////// last name
                          Container(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter email";
                                  }
                                  return null;
                                },
                                controller: l_name,
                                decoration: InputDecoration(
                                    labelStyle: const TextStyle(color: Colors.black),
                                    suffix: const Icon(Icons.email),
                                    hintText: "enter your Last Name",
                                    label: const Text("Last Name"),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.brown, width: 2.5),
                                    )),
                              )),

                          /////////////////////////////////////////////////// password
                          Container(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                controller: pass,
                                validator: (value) {
                                  if (value!.isEmpty) {
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.brown, width: 2.5),
                                    )),
                              )),
                          //////////////////////////////////////////////login button
                          Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('image/background3.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(30)),
                              child: MaterialButton(
                                onPressed: () async {
                                  if (form_key.currentState!.validate()) {
                                    try  {
                                    await  controller.RegisterUser(f_name: f_name.text, l_name: l_name.text, email: email.text, password: pass.text,context: context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  "successfully registered")));
                                      Get.to(Login());
                                    } on FirebaseAuthException catch (ex) {
                                      if (ex.code == "weak-password") {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content:
                                                    Text('Weak password')));
                                      } else if (ex.code ==
                                          'email-already-in-use') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'email exists enter anew email')));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(ex.toString())));
                                      }
                                    }

                                    // controller.LoginVerfiy(email.text, pass.text);
                                  }
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                          //
                        ],
                      )),
                ),
              ),
            ),
          );
        });
    throw UnimplementedError();
  }
}
