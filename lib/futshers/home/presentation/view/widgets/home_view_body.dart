import 'package:bookly_app/core/utilties/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Best_seller_listView.dart';
import 'CustomAppBar.dart';
import 'future_list_view.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            FutureListView(),

            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Newest Books',
                style: Styles.TextStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
        SliverFillRemaining(
          child: Best_Seller_ListView(),
        )
      ],
    );
  }
}
