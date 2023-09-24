import '../../../../data/models/book_model/book_model.dart';

abstract class FutureBooksStates{}

class initialFutureBookState extends FutureBooksStates{}
class LoadindFutureBookState extends FutureBooksStates{}
class SuccessFutureBookState extends FutureBooksStates{
  final List<BookModel> books;

  SuccessFutureBookState(this.books);
}
class FailuerFutureBookState extends FutureBooksStates{
  final String errorMessage;

  FailuerFutureBookState(this.errorMessage);
}


