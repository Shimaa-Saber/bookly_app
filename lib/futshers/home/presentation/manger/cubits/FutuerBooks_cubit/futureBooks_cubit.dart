import 'package:bookly_app/core/errors/failers.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/futshers/home/data/repos/home_repo.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/FutuerBooks_cubit/FutureBooks_States.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FutureBooksCubit extends Cubit<FutureBooksStates>{
  FutureBooksCubit(this.homeRepo) : super(initialFutureBookState());
final HomeRepo homeRepo;
  Future<void> getFutureBooks()async{
    emit(LoadindFutureBookState());
    var resulte=await homeRepo.fetchFutureBooks();
    resulte.fold((Failiar) {
      emit(FailuerFutureBookState(Failiar.errorMessage));
    }, (books){
      emit(SuccessFutureBookState(books));
    });


  }

}