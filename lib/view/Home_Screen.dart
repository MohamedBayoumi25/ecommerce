import 'package:flutter/material.dart';
import 'package:new_rothem/model/all_list.dart';
import 'package:new_rothem/reusable_component/choise_item.dart';
class Home_Screen extends StatefulWidget {

  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  late  int  isselected =0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///// ////////////////Our Product txt
          const Padding(padding: EdgeInsets.all(20),
            child: Text('Our Products',style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold

            ),

            ),

          ),
          ///////////////////choise item
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap:(){
                setState(() {
                isselected=0;
              });
                },child: Item(name: "AllProduct", num: 0,isselect: isselected,)),
              GestureDetector(onTap:(){
                setState(() {
                  isselected=1;
                });

              },child:Item(name: "Marbile", num: 1,isselect: isselected,)),
              GestureDetector(onTap:(){
                setState(() {
                  isselected=2;
                });
              },child:Item(name: "Garenit", num: 2,isselect: isselected,)),
            ],
          ),
          Expanded(child: Container(padding:const EdgeInsets.all(12),child: Item_List[isselected]))
        ],
      ),
    );
  }
}
