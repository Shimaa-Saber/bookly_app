import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failiar,List<BookModel>>> fetchSearchResulte({required String BookName});
}
