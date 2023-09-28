import 'package:bookly_app/core/utilties/app_routers.dart';
import 'package:bookly_app/futshers/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilties/Styles.dart';
import '../../../../../core/utilties/assets.dart';
import 'Book_rating.dart';

class bestSellerListViewItem extends StatelessWidget {
  const bestSellerListViewItem({Key? key, required this.bookModel,}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(goRouter.KroutedetailViewBath,extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                 imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => Icon(Icons.error),
               )
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child:  Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.TextStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                      Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.TextStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.TextStyle20.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                         BookRating(
                          rating: bookModel.volumeInfo.averageRating?.round()?? 0 ,
                           count: bookModel.volumeInfo.ratingsCount??0,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
