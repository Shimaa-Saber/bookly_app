import 'package:bookly_app/core/utilties/Styles.dart';
import 'package:bookly_app/futshers/search/presentation/manger/cubit/SearchCubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SearchResulteListview.dart';
import 'custom_search_textField.dart';

class SearchViewBody extends StatefulWidget {
   SearchViewBody({Key? key}) : super(key: key);

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
String? BookName;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_Search_TextField(

            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Search Resulte',
              style: Styles.TextStyle18,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: SearchResulteListView())
          ],
        ),
      ),
    );
  }
}
