import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilties/Styles.dart';
import 'BookAction.dart';
import 'Book_rating.dart';
import 'ListViewItem.dart';

class ImageDetailsSection extends StatelessWidget {
  const ImageDetailsSection({Key? key, required this.book}) : super(key: key);
final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child:  ListViewItem(ImageUrl: book.volumeInfo.imageLinks?.thumbnail??''),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.TextStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Opacity(
            opacity: .7,
            child: Text(
             book.volumeInfo.authors![0],
              style: Styles.TextStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 16,
        ),
        BookRating(
         rating: book.volumeInfo.averageRating??0,
          count: book.volumeInfo.ratingsCount??0,
       ),
        const SizedBox(
          height: 20,
        ),
        const BookAction(),
      ],
    );
  }
}
