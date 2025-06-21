

import 'package:bookly/core/utils/screenspath/app_screens.dart';
import 'package:bookly/feature/home/presentation/views/home.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRoute{
  static final router=GoRouter(routes: [
GoRoute(path:AppScreens.splashScreen ,builder: (context,state){
  return SplashView();
}),

GoRoute(path:AppScreens.homePage ,builder: (context,state){
  return HomePage();
}),
  ]);
}