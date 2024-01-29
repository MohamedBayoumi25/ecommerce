import 'package:get/get.dart';
import 'package:new_rothem/controller/controller.dart';

class Home_Binding implements Bindings
{
  @override
  void dependencies() {
    Get.put<Home_controllr>(Home_controllr());
  }

}