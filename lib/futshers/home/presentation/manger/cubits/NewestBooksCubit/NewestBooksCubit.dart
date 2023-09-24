import 'package:bookly_app/futshers/home/presentation/manger/cubits/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/repos/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(super.initialState, this.homeRepo);


  final HomeRepo homeRepo;
  Future<void> getFutureBooks()async{
    emit(LoadindNewestBookState());
    var resulte=await homeRepo.fetchFutureBooks();
    resulte.fold((Failiar) {
      emit(FailuerNewestBookState(Failiar.errorMessage));
    }, (books){
      emit(SuccessNewestBookState(books));
    });


  }
}