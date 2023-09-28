import 'package:bookly_app/futshers/home/presentation/manger/cubits/similerBooks/SimilerBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/repos/home_repo.dart';

class similerBooksCubit extends Cubit<SimilerBooksStates>{
  similerBooksCubit(this.homeRepo) : super(initialSimilerBookState());

  final HomeRepo homeRepo;
  Future<void> getSimilerBooks({required String category})async{
    emit(LoadindSimilerBookState());
    var resulte=await homeRepo.fetchSimilerBooks(Category: category);
    resulte.fold((Failiar) {
      emit(FailuerSimilerBookState(Failiar.errorMessage));
    }, (books){
      emit(SuccessSimilerBookState(books));
    });


  }

}