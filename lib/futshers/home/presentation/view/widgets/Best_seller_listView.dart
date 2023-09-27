import 'package:bookly_app/futshers/home/presentation/manger/cubits/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgits/custom_error_message.dart';
import '../../../../../core/widgits/custom_loading_indecator.dart';
import '../../../data/models/book_model/book_model.dart';
import 'best_seller_list_view_item.dart';

class Best_Seller_ListView extends StatelessWidget {
  const Best_Seller_ListView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksStates>(
      builder: (context, state) {
        LoadindNewestBookState();
        if(state is SuccessNewestBookState) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: bestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }else if(state is FailuerNewestBookState){
          return customErrorMessage(errorMessage: state.errorMessage,);
        }else {
          return CustomLoadingIndicator();
        }
      },

    );
  }
}
