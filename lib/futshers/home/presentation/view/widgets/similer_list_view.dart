import 'package:bookly_app/core/widgits/custom_error_message.dart';
import 'package:bookly_app/core/widgits/custom_loading_indecator.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/similerBooks/SimilerBooksCubit.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/similerBooks/SimilerBooksStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ListViewItem.dart';

class similerListView extends StatelessWidget {
  const similerListView({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<similerBooksCubit,SimilerBooksStates>(
      builder: (context, state) {
        if (state is SuccessSimilerBookState) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.2,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child:  ListViewItem(
                    ImageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',),
                );
              },
            ),
          );
        }else if(state is FailuerSimilerBookState){
         return customErrorMessage(errorMessage: state.errorMessage);
        }else{
          return CustomLoadingIndicator();
        }
      },

    );
  }
}
