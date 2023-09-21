import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_Search_TextField extends StatelessWidget {
  const Custom_Search_TextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)
              ,
              borderSide: BorderSide(
                  color: Colors.white
              )
          )
      ),
    );
  }
}
