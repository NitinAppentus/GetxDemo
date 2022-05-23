import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/Screen/GetService/ServiceController.dart';

class Service extends GetView<ServiceController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              controller.increament();
            }, child: Text("Increament Button ")),
          )
        ],
      ),),
    );
  }
}