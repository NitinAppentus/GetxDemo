import 'package:get/get.dart';
import 'package:getdemo/Screen/Auth/SignUp/SingupController.dart';

class SinupBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SinupController>(() => SinupController());
  }
  
}