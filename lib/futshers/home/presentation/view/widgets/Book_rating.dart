import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilties/Styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
          rating.toString(),
          style: Styles.TextStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          count.toString(),
          style: Styles.TextStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
