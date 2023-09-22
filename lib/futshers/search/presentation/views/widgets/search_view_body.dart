import 'package:bookly_app/core/utilties/Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SearchResulteListview.dart';
import 'custom_search_textField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_Search_TextField(),
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
