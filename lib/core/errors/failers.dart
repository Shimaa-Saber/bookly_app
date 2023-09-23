import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failiar{
  final String errorMessage;

  Failiar( this.errorMessage);
}

class ServerError extends Failiar{
  ServerError(super.errorMessage) ;


  factory ServerError.fromDioException(DioException dioException){
    switch (dioException.type){
      
      case DioExceptionType.connectionTimeout:
       return ServerError('Connection timeout with api server');
      case DioExceptionType.sendTimeout:
       return ServerError('Send timeout with api server');
      case DioExceptionType.receiveTimeout:
       return ServerError('Receive timeout with api server');
      case DioExceptionType.badCertificate:
       return ServerError('badCertificate with api server');
      case DioExceptionType.badResponse:
        return ServerError.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
      return ServerError('Request to api server was cancled');
      case DioExceptionType.connectionError:
        if(dioException.message!.contains('SocketException')){
        return  ServerError('No internet connection');
        }
       return ServerError('Un expexted error please try later');
      case DioExceptionType.unknown:
       return ServerError(' Opps there was an error, please try later😞 ');


    }


  }


  factory ServerError.fromResponse(int statusCode, dynamic response){
    if(statusCode==400||statusCode==401||statusCode==403){
      return ServerError(response['error']['message']);
      
    }
    else if(statusCode==404){
    return  ServerError('Your request Not found, please try later😞');
    }
    else if(statusCode==500){
    return  ServerError('internal server error, please try later😞');
    }
    else {
      return ServerError('Opps there was an error, please try later😞');
    }
  }

}