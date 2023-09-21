import 'package:flutter/cupertino.dart';

import '../../../../../core/utilties/Styles.dart';
import 'BookAction.dart';
import 'Book_rating.dart';
import 'ListViewItem.dart';

class ImageDetailsSection extends StatelessWidget {
  const ImageDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.17),
          child: ListViewItem(),

        ),
        SizedBox(height: 25,),
        Text('The Jungle Book',style: Styles.TextStyle30.copyWith(fontWeight: FontWeight.bold),),
        Opacity(
            opacity: .7,

            child: Text('Rudyard Kipling',style: Styles.TextStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)),
        SizedBox(height: 16,),
        BookRating(),
        const SizedBox(height: 37,),
        BookAction(),
      ],
    );
  }
}