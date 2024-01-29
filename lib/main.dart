
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_rothem/controller/binding.dart';
import 'package:new_rothem/view/login/login.dart';
import 'package:new_rothem/view/main_screen.dart';


void main   () async
{

  WidgetsFlutterBinding.ensureInitialized();


  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA5oAPAB9UQ0hOH00KQeZ9dbvWD1pJ3WPw",
      appId: "1:857804711691:android:689987488e2897b6faa40e",
      messagingSenderId: "857804711691",
      projectId: "marble-a2d1a",
    ),

  );


  runApp(const Mainn());
}
class Mainn extends StatelessWidget {

  const Mainn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      initialBinding: Home_Binding(),
      getPages: [
        GetPage(name: "/mainScreen", page: ()=>const Main_screen())
      ],


      debugShowCheckedModeBanner: false,
        home:Login(),

    );
  }
}
