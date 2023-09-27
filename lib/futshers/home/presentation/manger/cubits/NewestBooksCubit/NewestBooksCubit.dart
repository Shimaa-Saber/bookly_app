import 'package:bookly_app/futshers/home/presentation/manger/cubits/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/repos/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(this.homeRepo) : super(initialNewestBookState());


  final HomeRepo homeRepo;
  Future<void> getNewestBooks()async{
    emit(LoadindNewestBookState());
    var resulte=await homeRepo.fetchNewsBooks();
    resulte.fold((Failiar) {
      emit(FailuerNewestBookState(Failiar.errorMessage));
    }, (books){
      emit(SuccessNewestBookState(books));
    });


  }
}