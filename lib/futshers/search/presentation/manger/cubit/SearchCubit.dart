import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/futshers/search/data/search_rebo/Search_repo.dart';
import 'package:bookly_app/futshers/search/presentation/manger/cubit/SearchBooksStates.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';

class SearchCubit extends Cubit<SearchStates>{
  SearchCubit(this.searchRepo) : super(initialSearchBookState());


   String? bookName;
  final SearchRepo searchRepo;
  static SearchCubit get(BuildContext context) => BlocProvider.of(context);
  Future<void> getResulteBooks({required String bookName})async{
    emit(LoadindSearchBookState());
    Either<Failiar,List<BookModel>> resulte;
     resulte=await searchRepo.fetchSearchResulte(BookName: bookName);
    resulte.fold((Failiar) {
      emit(FailuerSearchBookState(Failiar.errorMessage));
    }, (books){
      emit(SuccessSearchBookState(books));
    });


  }
  TextEditingController searchController = TextEditingController();
}