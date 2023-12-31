

import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/core/utilties/api_servises.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/futshers/home/data/repos/home_repo.dart';
import 'package:bookly_app/futshers/search/presentation/manger/cubit/SearchCubit.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home_repo_implements implements HomeRepo{
  final api_servises api_servise;

  home_repo_implements(this.api_servise);

  @override
  Future<Either<Failiar, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await api_servise.get(
          url: 'volumes?Filtering=free-ebooks&Sorting=newest&q=Computer Science ');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        }catch(e){
          books.add(BookModel.fromJson(item));

        }
      }
      return right(books);
    }
    catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioException(e));
      }

    return left(ServerError(e.toString()));
  }
  }

  @override
  Future<Either<Failiar, List<BookModel>>> fetchFutureBooks()async {
    try {
      var data = await api_servise.get(
          url: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }
    catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioException(e));
      }

      return left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<Failiar, List<BookModel>>> fetchSimilerBooks({required String Category})async {

    try {
      var data = await api_servise.get(
          url: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }
    catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioException(e));
      }

      return left(ServerError(e.toString()));
    }

  }


}

