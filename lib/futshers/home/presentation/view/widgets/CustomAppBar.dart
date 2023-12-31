import 'package:bookly_app/core/utilties/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilties/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Row(
          children: [
            Image.asset(
              AssetsData.logo,
              height: 18,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  GoRouter.of(context).push(goRouter.KsearchViewpath);
                },
                icon: const Icon(FontAwesomeIcons.magnifyingGlass))
          ],
        ),
      ),
    );
  }
}
