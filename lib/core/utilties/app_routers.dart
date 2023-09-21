import 'package:bookly_app/futshers/Splash/prisintation/view/SplashView.dart';
import 'package:bookly_app/futshers/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/futshers/home/presentation/view/home_view.dart';
import 'package:bookly_app/futshers/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class goRouter{
  static const KrouteHomePath='/homeRouter';
  static const KroutedetailViewBath='/BookDetailRouter';
  static const KsearchViewpath='/SearchView';
   static final router=GoRouter(
     routes: [
       GoRoute(
     path: '/',
  builder: (context, state) => SplashView(),
  ),

   GoRoute(path:KrouteHomePath,
     builder: (context, state) =>homeView(),

   ),

       GoRoute(path:KroutedetailViewBath,
         builder: (context, state) =>BookDetailsView(),

       ),

       GoRoute(path:KsearchViewpath,
         builder: (context, state) =>SearchView(),

       )
   ]
   );
}