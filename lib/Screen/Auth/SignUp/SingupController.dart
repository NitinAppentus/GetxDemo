import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getdemo/Screen/HomeScreen/HomeScreen.dart';
import 'package:getdemo/Utils/CommonFunrion.dart';
import 'package:getdemo/Utils/Routes/app_routes.dart';

class SinupController extends GetxController{
 var emailcontroller =  TextEditingController();
 var passwordController  = TextEditingController();
 var nameController  = TextEditingController();
var emailText = "".obs;
  var passwordText = "".obs;
var nameText = "".obs;
  
  onChangeEmail(text){
    emailText.value=text; 
  }
  onChangePassword(text){
    passwordText.value=text; 
  }
  onChangeName(text){
    nameText.value=text; 
  }
  final storage = GetStorage();
    isValid() {
         
     if (nameText.isEmpty){
       CommonFunction.failedSnackBar("enter name".tr);
    }
    //   else if (!GetUtils.isEmail(emailText.toString())) {
    //   CommonFunction.failedSnackBar("Enter Email".tr);
    // }
    else if(passwordText.isEmpty) {
      CommonFunction.failedSnackBar("Enter Pass".tr);
       
    
    }
     else {
      loginApi();
    }
     
  }
  loginApi(){
   storage.write("id", 1);
    return  Get.offNamed(AppRoutes.logout);
  }
}