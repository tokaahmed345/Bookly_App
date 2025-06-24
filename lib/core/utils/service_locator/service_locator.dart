import 'package:bookly/core/utils/api_services/api_service.dart';
import 'package:bookly/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;


void setUpApiService(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
}

void setUpServiceLocator(){
getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(getIt.get<ApiService>()
));


}
