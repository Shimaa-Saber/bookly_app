import 'package:flutter/cupertino.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view_item.dart';

class SearchResulteListView extends StatelessWidget {
  const SearchResulteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: bestSellerListViewItem(),
        );
      },
    );
  }
}
