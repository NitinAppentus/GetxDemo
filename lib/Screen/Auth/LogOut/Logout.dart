import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({ Key? key }) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*0.021,
        width:  MediaQuery.of(context).size.width*0.21,
        child: Center(child: Text("Logout"),)),
    );
  }
}