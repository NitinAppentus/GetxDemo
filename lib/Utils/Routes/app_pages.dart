import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:getdemo/Middleware/AuthMiddleWare.dart';
import 'package:getdemo/Screen/Auth/LogOut/Logout.dart';
import 'package:getdemo/Screen/Auth/SignUp/Signup.dart';
import 'package:getdemo/Screen/Auth/SignUp/SignupBinding.dart';
import 'package:getdemo/Screen/Count/CountBinding.dart';
import 'package:getdemo/Screen/Count/mainCount.dart';
import 'package:getdemo/Screen/GetService/ServiceBinding.dart';
import 'package:getdemo/Screen/HomeScreen/HomeBinding.dart';
import 'package:getdemo/Screen/HomeScreen/HomeScreen.dart';
import 'package:getdemo/Utils/Routes/app_routes.dart';

import '../../Screen/GetService/Service.dart';

class AppPages{
 static final pages = [
   GetPage(name: AppRoutes.initalPage, page:()=>Signup(),binding: SinupBinding(),middlewares:[ AuthMiddleWare()]),
   // ignore: prefer_const_constructors
   GetPage(name: AppRoutes.homeopage, page:()=>HomeScreen(),binding: HomeBinding()),

   GetPage(name: AppRoutes.countpage, page: ()=>Maincount(),binding: CountBiding()),

   GetPage(name: AppRoutes.servicecounter, page: ()=>Service(),binding: ServiceBinding()),

  GetPage(name: AppRoutes.servicecounter, page: ()=>Logout(),binding: ServiceBinding())
 ];
}