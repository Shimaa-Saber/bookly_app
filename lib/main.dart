import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilties/app_routers.dart';
import 'package:bookly_app/core/utilties/setup%20serviseLocter.dart';
import 'package:bookly_app/futshers/home/data/repos/home_repo_implemints.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/FutuerBooks_cubit/FutureBooks_States.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/FutuerBooks_cubit/futureBooks_cubit.dart';
import 'package:bookly_app/futshers/home/presentation/manger/cubits/NewestBooksCubit/NewestBooksCubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  SetupLoctionServises();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FutureBooksCubit(
         getIt.get<home_repo_implements>(),
        )

        ),

        BlocProvider(create: (context)=>NewestBooksCubit(
          getIt.get<home_repo_implements>(),
        )

        )
      ],
      child: MaterialApp.router(
        routerConfig: goRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(KprimaryColor),
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
