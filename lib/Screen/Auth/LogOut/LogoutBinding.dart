import 'package:get/get.dart';
import 'package:getdemo/Screen/Auth/LogOut/LogoutController.dart';
import 'package:getdemo/Screen/Auth/SignUp/SingupController.dart';
import 'package:getdemo/Screen/Count/CountController.dart';

class LogoutBiding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LogoutController>(() => LogoutController());
  }
  
}