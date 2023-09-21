import 'package:bookly_app/core/utilties/app_routers.dart';
import 'package:bookly_app/futshers/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilties/Styles.dart';
import '../../../../../core/utilties/assets.dart';
import 'Book_rating.dart';

class bestSellerListViewItem extends StatelessWidget {
  const bestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(goRouter.KroutedetailViewBath);
      },
      child: SizedBox(
        height: 125,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5/4,
                child: Container(

                  decoration: BoxDecoration(


                      image: DecorationImage(
                          fit:BoxFit.fill,
                          image: AssetImage(AssetsData.test)),
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.5,
                      child: Text('Harry Potter and the Goblet of  Fire',style: Styles.TextStyle20
                        ,maxLines: 2,
                        overflow: TextOverflow.ellipsis

                        ,),
                    ),
                    const SizedBox(height: 3,),
                    Text('J.K. Roating',style: Styles.TextStyle14,),
                    SizedBox(height: 3,),
                    Row(children: [
                      Text(r'99.9 $',style: Styles.TextStyle20.copyWith(fontWeight: FontWeight.bold),),
                      Spacer(),
                      BookRating()
                    ],)
                  ],),
              )
            ],

          ),
        ),
      ),
    );
  }
}