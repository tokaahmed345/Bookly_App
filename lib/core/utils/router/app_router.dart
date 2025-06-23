import 'package:bookly/core/utils/app_path/app_pathes.dart';
import 'package:bookly/feature/home/presentation/views/book_details_view.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static final router = GoRouter(routes: [
    GoRoute(
        path: AppPathes.splashScreen,
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
        path: AppPathes.homePage,
        builder: (context, state) {
          return const HomePage();
        }),
    GoRoute(
        path: AppPathes.bookDetails,
        builder: (context, state) {
          return const BookDetailsView();
        }),
    GoRoute(
        path: AppPathes.searchview,
        builder: (context, state) {
          return const SearchView();
        }),
  ]);
}
