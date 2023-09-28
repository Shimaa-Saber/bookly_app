import '../../../../home/data/models/book_model/book_model.dart';

abstract class SearchStates{}

class initialSearchBookState extends SearchStates{}
class LoadindSearchBookState extends SearchStates{}
class SuccessSearchBookState extends SearchStates{
  final List<BookModel> books;

  SuccessSearchBookState(this.books);
}
class FailuerSearchBookState extends SearchStates{
  final String errorMessage;

  FailuerSearchBookState(this.errorMessage);
}