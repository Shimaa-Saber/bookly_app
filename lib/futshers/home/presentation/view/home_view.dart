import 'package:bookly_app/futshers/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class homeView extends StatelessWidget {
  const homeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: homeViewBody(),
    );
  }
}
