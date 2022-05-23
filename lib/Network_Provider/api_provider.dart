import 'package:dio/dio.dart';
import 'package:getdemo/Network_Provider/api_constant.dart';


class ApiProvider{
 Dio _dio  = Dio();
 DioError? _dioError;

 ApiProvider.base(){
   BaseOptions dioOption = BaseOptions()..baseUrl = baseUrl;
   _dio= Dio(dioOption);
   _dio.interceptors.add(InterceptorsWrapper(
    
     
     ));
  
 }

}