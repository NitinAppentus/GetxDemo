import 'package:get/get.dart';
import 'package:getdemo/Screen/Auth/SignUp/SingupController.dart';
import 'package:getdemo/Screen/Count/CountController.dart';

class CountBiding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
  
}