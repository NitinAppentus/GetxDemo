import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/Widget/AppColors.dart';

class CommonFunction{
    static failedSnackBar(msg) {
    defaultSnackBar('failed'.tr, msg, Colors.red);
  }
  
  static defaultSnackBar(title, msg, color) {
    Get.snackbar(
      title,
      msg,
      snackPosition: SnackPosition.BOTTOM,
      //backgroundGradient: themeGradient,
      backgroundColor: color,
      duration: const Duration(seconds: 1),
      colorText: AppColor.AppWhite,
      margin: const EdgeInsets.all(20),
      isDismissible: false,
      snackStyle: SnackStyle.FLOATING,
    );
  }

}
