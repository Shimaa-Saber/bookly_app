import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
Future<Either<Failiar,List<BookModel>>>  fetchNewsBooks();
Future<Either<Failiar,List<BookModel>>>  fetchFutureBooks();
}