import 'package:get/get.dart';
import 'package:getdemo/Screen/Auth/SignUp/SingupController.dart';
import 'package:getdemo/Screen/HomeScreen/HomeController.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
  
}