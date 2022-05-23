import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/Screen/Auth/SignUp/Signup.dart';
import 'package:getdemo/Screen/GetService/Service.dart';
import 'package:getdemo/Utils/Routes/app_pages.dart';
import 'package:getdemo/Utils/Routes/app_routes.dart';
import 'package:get_storage/get_storage.dart';

import 'Screen/GetService/ServiceController.dart';


Future<void> main() async{
  await GetStorage.init();
  await initService();
  runApp(const MyApp());
}

Future<void>initService()async{
print("This is the Start of Service");
await Get.putAsync<ServiceController>(()async => await ServiceController() );
print("The Service are about to start");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 
    return GetMaterialApp(
  title: "Demo",
  initialRoute: AppRoutes.initalPage,
 getPages: AppPages.pages,
    );
  }
}

