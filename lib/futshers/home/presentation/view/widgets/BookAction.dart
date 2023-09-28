import 'package:bookly_app/core/utilties/function/launch_url.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
                onPressed: () {},
                backgroundcolor: Colors.white,
                textColor: Colors.black,
                text: 'Free',
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(12)))),
        Expanded(
            child: CustomButton(
                onPressed: ()async {
                 launchCustomUr(context, bookModel.volumeInfo.previewLink);
                },
                backgroundcolor: Colors.deepOrangeAccent,
                textColor: Colors.white,
                text: getText( bookModel),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(12))))
      ],
    );
  }


}


String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avaliable';
  } else {
    return 'Preview';
  }
}

