import 'package:bookly_app/core/widgits/custom_error_message.dart';
import 'package:bookly_app/core/widgits/custom_loading_indecator.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/FutuerBooks_cubit/FutureBooks_States.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/FutuerBooks_cubit/futureBooks_cubit.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ListViewItem.dart';

class FutureListView extends StatelessWidget {
  const FutureListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FutureBooksCubit,FutureBooksStates>(
      builder: (context, state) {
        if (state is SuccessFutureBookState) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                  child: ListViewItem(
                    ImageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                  ),
                );
              },
            ),
          );
        } else if (state is FailuerFutureBookState) {
          return customErrorMessage(errorMessage: state.errorMessage);
        }
        else  {
          return CustomLoadingIndicator();
        }
      },

    );
  }
}
