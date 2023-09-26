import 'package:dio/dio.dart';

class api_servises{
  final bas_url='https://www.googleapis.com/books/v1/';
  final Dio _dio;
  api_servises(this._dio);
   Future<Map<String,dynamic>> get({required String url})async{
    var response= await _dio.get('$bas_url$url');
    return response.data;
   }
}



