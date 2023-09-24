import '../../../../data/models/book_model/book_model.dart';

abstract class NewestBooksStates{}

class initialNewestBookState extends NewestBooksStates{}
class LoadindNewestBookState extends NewestBooksStates{}
class SuccessNewestBookState extends NewestBooksStates{
  final List<BookModel> books;

  SuccessNewestBookState(this.books);
}
class FailuerNewestBookState extends NewestBooksStates {
  final String errorMessage;

  FailuerNewestBookState(this.errorMessage);
}