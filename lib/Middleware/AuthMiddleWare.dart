
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class AuthMiddleWare extends GetMiddleware{
  final storage = GetStorage();
 @override
 RouteSettings ? redirect(String ? route){
   if(storage.read("id")!= null)
   return RouteSettings(name: '/logout');
 }
}