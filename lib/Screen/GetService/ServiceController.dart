
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ServiceController extends GetxController{
void increament()async{
  final datacount = GetStorage();
  List<int> count=[1,2,3,4,5,6];
  print("$count" + " is working");
  return datacount.write("counter", count);
  
}

}