import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilties/app_routers.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'futshers/Splash/prisintation/view/SplashView.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter.router,
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(

        scaffoldBackgroundColor: Color(KprimaryColor),
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),




    );
  }
}
