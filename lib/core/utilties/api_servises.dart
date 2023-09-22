import 'package:dio/dio.dart';

class api_servises{
  final bas_url='https://www.googleapis.com/books/v1';
  final Dio dio;
  api_servises(this.dio);
   Future<Map<String,dynamic>> get({required String url})async{
    var response= await dio.get('$bas_url$url');
    return response.data;
   }
}