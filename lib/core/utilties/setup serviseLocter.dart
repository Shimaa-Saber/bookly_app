import 'package:bookly_app/core/utilties/api_servises.dart';
import 'package:bookly_app/futshers/home/data/repos/home_repo_implemints.dart';
import 'package:bookly_app/futshers/search/data/search_rebo/SearchRepoImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void SetupLoctionServises(){
  getIt.registerSingleton<api_servises>(api_servises(Dio()));
  getIt.registerSingleton<home_repo_implements>(home_repo_implements(getIt.get<api_servises>()));
  getIt.registerSingleton<searchRepoimp>(searchRepoimp(getIt.get<api_servises>()));
}


