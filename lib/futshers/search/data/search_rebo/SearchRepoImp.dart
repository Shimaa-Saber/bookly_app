import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/core/utilties/api_servises.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/futshers/search/data/search_rebo/Search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class searchRepoimp extends SearchRepo{
  final api_servises apiserv;

  searchRepoimp(this.apiserv);
  @override
  Future<Either<Failiar, List<BookModel>>> fetchSearchResulte({required String BookName}) async{

    try {
      var data = await apiserv.get(
          url: 'volumes?Filtering=free-ebooks&q=intitle:$BookName');
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