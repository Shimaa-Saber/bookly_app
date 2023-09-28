import 'package:bookly_app/core/utilties/app_routers.dart';
import 'package:bookly_app/core/widgits/custom_error_message.dart';
import 'package:bookly_app/core/widgits/custom_loading_indecator.dart';
import 'package:bookly_app/futshers/search/presentation/manger/cubit/SearchBooksStates.dart';
import 'package:bookly_app/futshers/search/presentation/manger/cubit/SearchCubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view_item.dart';

class SearchResulteListView extends StatelessWidget {
  const SearchResulteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchStates>(
      builder: (context, state) {
        if(state is SuccessSearchBookState){
          return ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            // physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,

            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
                 child: GestureDetector(
                   onTap: (){
                     GoRouter.of(context).push(goRouter.KroutedetailViewBath);
                   },
                   child: bestSellerListViewItem(
                     bookModel: state.books[index],
                   ),
                 ),

              );
            },

          );
        }else if(state is FailuerSearchBookState){
         return customErrorMessage(errorMessage: state.errorMessage,);
        }else{
         return CustomLoadingIndicator();
        }
      },

    );
  }
}
