import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/futshers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class home_repo_implements implements HomeRepo{
  @override
  Future<Either<Failiar, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failiar, List<BookModel>>> fetchFutureBooks() {
    // TODO: implement fetchFutureBooks
    throw UnimplementedError();
  }
}