import '../../../../data/models/book_model/book_model.dart';

abstract class SimilerBooksStates{}

class initialSimilerBookState extends SimilerBooksStates{}
class LoadindSimilerBookState extends SimilerBooksStates{}
class SuccessSimilerBookState extends SimilerBooksStates{
  final List<BookModel> books;

  SuccessSimilerBookState(this.books);
}
class FailuerSimilerBookState extends SimilerBooksStates {
  final String errorMessage;

  FailuerSimilerBookState(this.errorMessage);
}