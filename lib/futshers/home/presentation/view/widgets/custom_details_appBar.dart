import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailsViewAppBar extends StatelessWidget {
  const CustomDetailsViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {
            GoRouter.of(context).pop();
          }, icon: const Icon(Icons.clear)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
    );
  }
}
