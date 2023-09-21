import 'package:bookly_app/core/utilties/Styles.dart';
import 'package:bookly_app/core/utilties/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Best_seller_listView.dart';
import 'CustomAppBar.dart';
import 'ListViewItem.dart';
import 'best_seller_list_view_item.dart';
import 'future_list_view.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
      const  SliverToBoxAdapter(
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(),
                FutureListView(),
                // SizedBox(height: 20,),
                Text('Best Seller',style: Styles.TextStyle18,),
                SizedBox(height: 20,)

                ,

              ],
            )

        ),
       SliverFillRemaining(child: Best_Seller_ListView(),)
      ],
    );



  }
}


















