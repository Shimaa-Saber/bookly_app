import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../manger/cubit/SearchCubit.dart';

class Custom_Search_TextField extends StatelessWidget {
   Custom_Search_TextField({
    super.key,this.submit
  });

  final void Function(String)? submit;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: SearchCubit.get(context).searchController,
      onSubmitted: submit,
      textInputAction: TextInputAction.search,
    onEditingComplete: () {
      if (SearchCubit
          .get(context)
          .searchController
          .text
          .isNotEmpty) {
        SearchCubit.get(context).getResulteBooks(
          bookName: SearchCubit
              .get(context)
              .searchController
              .text,
        );
      }
    },

      decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {
      if(SearchCubit.get(context).searchController.text.isNotEmpty) {
        SearchCubit.get(context).getResulteBooks(
          bookName: SearchCubit
              .get(context)
              .searchController
              .text,
        );
      }
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white))),
    );
  }
}
