import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilties/Styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key,this.mainAxisAlignment=MainAxisAlignment.start}) : super(key: key);
 final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
      Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 20,),

      SizedBox(width: 6.3,),
      Text('4.8',style: Styles.TextStyle16,),

      SizedBox(width: 5,),
      Text('(2435)',style: Styles.TextStyle14.copyWith(color: Colors.grey),)
    ],);
  }
}