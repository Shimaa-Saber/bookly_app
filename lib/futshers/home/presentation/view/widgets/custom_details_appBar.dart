import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDetailsViewAppBar extends StatelessWidget {
  const CustomDetailsViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.clear)),

          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
        ],),
    );
  }
}
