import 'package:bookly_app/core/utilties/setup%20serviseLocter.dart';
import 'package:bookly_app/futshers/Splash/prisintation/view/SplashView.dart';
import 'package:bookly_app/futshers/home/data/repos/home_repo_implemints.dart';
import 'package:bookly_app/futshers/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/futshers/home/presentation/view/home_view.dart';
import 'package:bookly_app/futshers/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../futshers/home/data/models/book_model/book_model.dart';
import '../../futshers/home/presentation/manger/cubits/similerBooks/SimilerBooksCubit.dart';

abstract class goRouter {
  static const KrouteHomePath = '/homeRouter';
  static const KroutedetailViewBath = '/BookDetailRouter';
  static const KsearchViewpath = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: KrouteHomePath,
      builder: (context, state) => const homeView(),
    ),
    GoRoute(
      path: KroutedetailViewBath,
      builder: (context, state) => BlocProvider(
        create: (context) => similerBooksCubit(
          getIt.get<home_repo_implements>()
        ),
          child:  BookDetailsView(
           bookModel: state.extra as BookModel,
          )),
    ),
    GoRoute(
      path: KsearchViewpath,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
