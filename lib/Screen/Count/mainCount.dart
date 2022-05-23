import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Maincount extends StatefulWidget {
  const Maincount({ Key? key }) : super(key: key);

  @override
  State<Maincount> createState() => _MaincountState();
}

class _MaincountState extends State<Maincount> {
  int _count = 0;
  final datacount = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(datacount.read('count')!=null){
      _count = datacount.read('count');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: Text("${datacount.read('count')}"+" THIS IS "),
      )),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          setState(() {
            _count++;
            datacount.write("count", _count);
          });
        },
        child: Icon(Icons.add),
      ) ,
    );
  }
}