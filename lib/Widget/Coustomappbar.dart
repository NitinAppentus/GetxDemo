import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustomAppbar extends StatelessWidget {
 String text;
   CoustomAppbar({ Key? key ,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
     
    child: Center(
      child: Row(
        children: [
         Text(text)
        ],
      ),
    ),
    );
  }
}