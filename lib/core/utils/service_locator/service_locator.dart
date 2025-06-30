import 'package:bookly/core/utils/api_services/api_service.dart';
import 'package:bookly/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly/feature/search/data/repo/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;




void setUpServiceLocator(){
    getIt.registerSingleton<ApiService>(ApiService(Dio()));

getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(getIt.get<ApiService>()
));
getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getIt.get<ApiService>()));


}
