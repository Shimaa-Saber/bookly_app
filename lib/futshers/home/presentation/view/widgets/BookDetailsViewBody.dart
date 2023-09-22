import 'package:bookly_app/futshers/home/presentation/view/widgets/similerBooksSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_details_appBar.dart';
import 'imageDetailsSection.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomDetailsViewAppBar(),
                ImageDetailsSection(),

                SizedBox(
                  height: 40,
                ),
                similerBooksSection()

                //  SizedBox(height: 20,)
              ],
            ),
          ),
        )
      ],
    );
  }
}
