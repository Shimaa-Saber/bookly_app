import 'package:bookly_app/core/utilties/app_routers.dart';
import 'package:bookly_app/core/utilties/assets.dart';
import 'package:bookly_app/futshers/Splash/prisintation/view/widgets/sliderWidget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controler;
  late Animation<Offset> animate;

  @override
  void initState() {
    super.initState();
    controler =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animate = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(controler);
    controler.forward();

    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(goRouter.KrouteHomePath);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(image: AssetImage(AssetsData.logo)),
        const SizedBox(
          height: 5,
        ),
        sliderWidget(animate: animate)
      ],
    );
  }
}
