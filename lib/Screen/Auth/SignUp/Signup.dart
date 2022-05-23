// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/Screen/Auth/SignUp/SingupController.dart';
import 'package:getdemo/Screen/HomeScreen/HomeScreen.dart';
import 'package:getdemo/Utils/Routes/app_routes.dart';
import 'package:getdemo/Widget/AppColors.dart';
import 'package:getdemo/Widget/CoustomTextEditing.dart';
import 'package:getdemo/Widget/Coustomappbar.dart';

class Signup extends GetView<SinupController> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.AppWhite,
     appBar: AppBar(
       backgroundColor:AppColor.AppBlack,
       title: Text("Signup"),
       centerTitle: true,
     ),
     body: SingleChildScrollView(child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.all(28.0),
           child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
             children: [
               TextField(
                 onChanged: (String text){
                   controller.onChangeName(text);
                   log(text);
                 },
                 decoration: InputDecoration(
                   hintText: "Enter Name",
                   
                 ),
               ),
               SizedBox(
                 height: MediaQuery.of(context).size.height*0.021,
               ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                 onChanged: (String text){
                   controller.onChangeName(text);
                    log(text);
                 },
                 decoration: InputDecoration(
                   hintText: "Enter Email",
                   
                 ),
               ),
                SizedBox(
                 height: MediaQuery.of(context).size.height*0.021,
               ),
                TextField(
                  
                  obscureText: true,
                 onChanged: (String text){
                   controller.onChangePassword(text);
                   log(text.toString());
                  
                 },
                 decoration: InputDecoration(
                   hintText: "Enter Password",
                   
                 ),
               ),
             ],
           ),
         ),
           SizedBox(
                 height: MediaQuery.of(context).size.height*0.21,
               ),
               GestureDetector(
                 onTap: (){
                  // Get.toNamed(AppPages.homeopage);
                   controller.isValid();
                  
                 },
                 child: Container(
                   height: MediaQuery.of(context).size.height*0.07,
                   width: MediaQuery.of(context).size.width*0.5,
                   decoration: BoxDecoration(
                     color: AppColor.AppBlack,
                     borderRadius: BorderRadius.circular(20),
               
                   ),
                   child: Center(child: Text("Submit",style: TextStyle(
                     color: AppColor.AppWhite
                   ),))
                   
                   ,
                 ),
               )
       ],
     )),
    );
  }
}