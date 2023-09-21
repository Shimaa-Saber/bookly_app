import 'package:flutter/cupertino.dart';

import 'ListViewItem.dart';

class similerListView extends StatelessWidget {
  const similerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ListViewItem();
        },),
    );
  }
}
